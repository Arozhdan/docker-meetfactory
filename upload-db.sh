git checkout develop
git add .
echo "Enter commit message:"
read message -r
git commit -m $message 
git push

REPO=$(node -p -e "require('./package.json').name") 


echo "Exporting data into staging database...
"

docker exec -t $REPO'_postgres_1' pg_dumpall -c -U strapi > ./dump.sql

echo "Uploading sql file"

scp dump.sql root@64.225.103.36:/backup/local.sql


echo "Done. Removing the sql file:
"
rm dump.sql



echo "Copying staging db... \n\n"
ssh root@64.225.103.36 "
  docker exec -t $REPO'_postgres_1' psql -U strapi -d strapi -c \"
          DO '\$\$ '
            DECLARE 
              r RECORD;
            BEGIN
            FOR r IN 
              (
                SELECT table_name
                FROM information_schema.tables 
                WHERE table_schema=current_schema()
              ) 
            LOOP
               EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.table_name) || ' CASCADE';
            END LOOP;
          END \$\$ ;
          \"
         
" && "docker exec -t $REPO'_postgres_1' pg_dump -c -U strapi strapi > /backup/dump_staging.sql"

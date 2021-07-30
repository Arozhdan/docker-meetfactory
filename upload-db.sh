git add .
echo "Print commit message:"
read message
git commit -m $message 
git push

echo "Exporting data into staging database...
"

docker exec -t docker_postgres_1 pg_dumpall -c -U strapi > ./dump.sql

echo "Uploading sql file"

scp dump.sql root@64.225.103.36:/backup/local.sql


echo "Done. Removing the sql file:
"
rm dump.sql

REPO=$(node -p -e "require('./package.json').name")


echo "Copying staging db... \n\n"
ssh root@64.225.103.36 "
  docker exec -t $REPO'_postgres_1' pg_dump -c -U strapi strapi > /backup/dump_staging.sql
"

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

ssh root@64.225.103.36 "./erase-meet-staging.db;  /backup/dump_staging.sql | sudo docker exec -i $REPO'_postgres_1' psql -U strapi"
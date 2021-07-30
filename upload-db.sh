git checkout develop
git add .
echo "Enter commit message:"
read message -d
git commit -m $message 
git push

REPO=$(node -p -e "require('./package.json').name") 


echo "Exporting data into staging database...
"

docker exec -t $REPO'_postgres_1' pg_dump -c -U strapi strapi > ./dump.sql

echo "Uploading sql file"

scp dump.sql root@64.225.103.36:/backup/local.sql


echo "Done. Removing the sql file:
"
rm dump.sql

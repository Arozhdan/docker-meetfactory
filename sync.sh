git checkout develop
git pull

rsync -chavzP --stats root@64.225.103.36:/home/staging/actions-runner/_work/docker-meetfactory/docker-meetfactory/strapi/public/uploads ./strapi/public/

echo "Export staging db...
"
REPO=$(node -p -e "require('./package.json').name")


echo "Copying staging db... \n\n"
ssh root@64.225.103.36 "
  docker exec -t $REPO'_postgres_1' pg_dump -c -U strapi strapi > /backup/dump_staging.sql
"

echo "Downloading staging db... \n\n"

scp root@64.225.103.36:/backup/dump_staging.sql dump.sql

echo "Importing db from dump.sql ... \n\n"

cat dump.sql | docker exec -i $REPO'_postgres_1' psql -U strapi strapi -q

echo "Done. Removing the sql file:
"
rm dump.sql


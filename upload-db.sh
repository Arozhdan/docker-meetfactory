echo "Exporting data into staging database...
"

docker exec -t docker_postgres_1 pg_dumpall -c -U strapi > ./dump.sql

echo "Uploading sql file"

scp dump.sql root@64.225.103.36:/backup/local.sql


echo "Done. Removing the sql file:
"
rm dump.sql


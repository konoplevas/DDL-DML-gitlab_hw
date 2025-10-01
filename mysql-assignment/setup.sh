#!/bin/bash
echo "Настройка MySQL и базы данных sakila..."

docker-compose down
docker-compose up -d

sleep 30

wget -q https://downloads.mysql.com/docs/sakila-db.zip
unzip -q sakila-db.zip

docker cp sakila-schema.sql mysql8:/tmp/
docker cp sakila-data.sql mysql8:/tmp/
docker exec -i mysql8 mysql -uroot -ppassword < /tmp/sakila-schema.sql
docker exec -i mysql8 mysql -uroot -ppassword < /tmp/sakila-data.sql

docker exec -i mysql8 mysql -uroot -ppassword < sql-scripts/setup.sql

echo "Готово! MySQL запущен на localhost:3306"

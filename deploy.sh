#!/bin/sh

mysql -u root -p < src/sql/create.localdb.sql

gvnix.sh script --file tempojobs.roo --lineNumbers

echo ''
echo 'Ejecutar tests:'
echo 'mvn clean compile test'
echo 'Ejecutar tomcat:'
echo 'mvn clean compile tomcat7:run'

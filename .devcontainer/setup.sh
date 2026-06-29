#!/bin/bash
# Wait for MySQL to start
echo "Waiting for MySQL..."
until mysqladmin ping -h"localhost" -u"root" --silent; do
  sleep 2
done

# Import your SQL file
echo "Importing database..."
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root wordpress < DB/mesadent_j0eb.sql
echo "Database imported successfully."
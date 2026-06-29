#!/bin/bash
# Start MariaDB service
sudo service mariadb start

# Wait for MySQL to initialize
echo "Waiting for MySQL to start..."
until mysqladmin ping -h"localhost" -u"root" --silent; do
  sleep 2
done

# Create database and import
if ! mysql -u root -e "USE wordpress;" 2>/dev/null; then
    echo "Importing database..."
    mysql -u root -e "CREATE DATABASE wordpress;"
    mysql -u root wordpress < DB/mesadent_j0eb.sql
    echo "Import finished."
fi
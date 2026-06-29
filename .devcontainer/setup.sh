#!/bin/bash
# Start MySQL
sudo service mariadb start

# Wait for MySQL to be ready
echo "Waiting for MySQL..."
until mysqladmin ping -h"localhost" -u"root" --silent; do
  sleep 2
done

# Import your SQL file if the database doesn't exist yet
if ! mysql -u root -e "USE wordpress;" 2>/dev/null; then
    echo "Creating database and importing..."
    mysql -u root -e "CREATE DATABASE wordpress;"
    mysql -u root wordpress < DB/mesadent_j0eb.sql
    echo "Database import complete."
fi
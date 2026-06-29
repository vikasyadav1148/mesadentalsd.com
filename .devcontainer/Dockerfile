FROM mcr.microsoft.com/devcontainers/php:8.2

# Update and install MariaDB (MySQL compatible)
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends mariadb-server \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Ensure MySQL is accessible
RUN mkdir -p /var/run/mysqld \
    && chown -R vscode:vscode /var/run/mysqld

# ... (rest of your existing Dockerfile)

# Fix permissions for MySQL
RUN mkdir -p /var/run/mysqld /var/lib/mysql \
    && chown -R mysql:mysql /var/run/mysqld /var/lib/mysql \
    && chmod 777 /var/run/mysqld
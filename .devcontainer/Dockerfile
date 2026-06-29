FROM mcr.microsoft.com/devcontainers/php:8.2

# Update and install MariaDB (MySQL compatible)
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends mariadb-server \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Ensure MySQL is accessible
RUN mkdir -p /var/run/mysqld \
    && chown -R vscode:vscode /var/run/mysqld
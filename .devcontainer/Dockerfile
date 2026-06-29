FROM mcr.microsoft.com/devcontainers/php:8.2

# Install MySQL Server
RUN apt-get update && apt-get install -y mariadb-server \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Start MySQL service on container start
RUN service mariadb start
# Example docker command to create container from image while provide sa password

docker create -p 1433:1433 --name mydb --env sa_password=<YOUR SA PASSWORD>fazleskhan/mssql-dev:adventureworks-restored

# Example docker command to start the container as a daemon

docker start mydb

# Example docker conmmand to start attached to the container's command line

docker start -i mydb

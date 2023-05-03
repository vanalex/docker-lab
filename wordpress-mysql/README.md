# Wordpress with mysql

Steps:

1. We create a MySQL container and then exec into it to create a database.
2. Then we create a WordPress container and expose internal port 80 to external 8080.
3. WordPress cannot detect the MySQL database so we create a new network and add both the containers to the network.
4. We add the database details to the WordPress site and done!

Step 1:

```sh
$ docker run --name wp-backend -e MYSQL_ROOT_PASSWORD=12345 -d mysql:latest
```


We have the container but we don't have a Database inside it. Wait for a few minutes for the container to be created, then run 
```sh
docker exec -it wp-backend mysql -u root -p
```

* exec -> Execute a command inside the container
* -it mysql-> using interactive terminal of MySQL
* -u root -p -> The command that you want to run inside the MySQL container
* -u -> username
* -p -> ask for a password(MYSQL_ROOT_PASSWORD)

Once inside, run create database wordpress; to create a database for us to use.

Type exit to exit the container.

Step 2:

```sh
docker run -d --name wp-frontend -p 8080:80 wordpress
```

Step 3:

```sh
docker network create --attachable wp-network
```
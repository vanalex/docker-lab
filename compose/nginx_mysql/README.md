#### PASSWORD FOR DB

```sh
$ openssl rand -base64 32 > db_password.txt
$ openssl rand -base64 32 > db_root_password.txt
```


### create the conpose container

```sh
docker-compose up
```

### List out the compose services 
```sh
docker-compose ps
```

### Verify nginx is running
```sh
curl http://localhost
```

### Verify the Mysql db
```sh
$ docker exec -it Mysqldb mysql -u root -p
```
Enter the root password which is in db_root_password.txt
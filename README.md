
# Laravel docker compose

Usage
=====
Install the laravel code as in the [documentation](https://laravel.com/docs/7.x/installation#installing-laravel).
```
composer create-project --prefer-dist laravel/laravel <name_project>
```
Then go into the directory <name_project>. And then we want to download the files related ``docker-compose.yml``.
```
curl -sL https://git.io/JfYE1 | bash -s
```
Now spin off the docker instances by the following commad
```
docker-compose up -d
```
Now you can access the project:
* [http://localhost:8080](http://localhost:8080)
* [https://localhost:8443](https://localhost:8443)
* [Adminer](https://localhost:8306)
* You can connect directly to the database, to localhost on port 3306

SSL
===
The project will be delivered with certificate for localhost. To recreate a new ssl certificate
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./.docker/nginx/localhost.key -out ./.docker/nginx/localhost.crt
```
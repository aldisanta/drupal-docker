## Drupal 8 Demo

### Requirement
1. Git Installed\
2. Docker (with Docker-Compose) Installed\

### Installation
1. Copy `.env.example` -> `.env` to suit your needs\

2. On `drupal-docker` run this command\
```
docker-compose up -d --build
```

3. After finished, run command below for composer install
```
docker exec -it {DRUPAL_CONTAINER_NAME} composer install -vvv
```

4. Visit http://localhost:{DRUPAL_PORT} then proceed with installing drupal with following database credentials\
```
Database: MariaDB
Database Name: drupal
Database username: {MYSQL_DATABASE}
Database password: {MYSQL_ROOT_PASSWORD}
ADVANCED OPTIONS -> Host: db
```
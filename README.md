## Drupal 8 Demo

### Requirement
1. Git Installed\
2. Docker (with Docker-Compose) Installed\

### Installation
1. Copy `.env.example` -> `.env` to suit your needs\

2. On `drupal-docker` run this command to set up development environment\
```
docker-compose up -d --build
```

3. After finished, run command below for drupal install
```
docker exec -it drupal_docker_drupal bash -c "bash /install/install.sh"
```

4. Visit http://localhost:{DRUPAL_PORT} then proceed with installing drupal with following database credentials\
```
Database: MariaDB
Database Name: drupal
Database username: root
Database password: {MYSQL_ROOT_PASSWORD}
ADVANCED OPTIONS -> Host: db
```

5. run command below for drupal create module
```
docker exec -it drupal_docker_drupal bash -c "bash /install/demo.sh"
```

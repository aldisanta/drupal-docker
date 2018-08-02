## Drupal 8 Demo

### Requirement
1. Git Installed\
2. Docker (with Docker-Compose) Installed\

### Installation
1. Clone the demo repository using command\
```
git clone --single-branch --branch demo https://github.com/adipasanta/drupal-demo.git
```
this will create folder `drupal-demo`.\

2. On `drupal-demo`, make sure that port 8080 & 3306 are unused (or at least try to stop it fo a while) then run this command\
```
docker-compose up -d --build
```

3. After this process finished, given the drupal container named `drupaldemo_drupal_1`, get inside drupal container using\
```
docker exec -it drupaldemo_drupal_1 bash
```

4. Inside drupal container run following composer script\
```
container$ composer install -vvv
```

5. Visit http://localhost:8080 then proceed with installing drupal with following database credentials\
```
Database: MariaDB
Database Name: drupal
Database username: root
Database password: drupal_pass
ADVANCED OPTIONS -> Host: db
```

6. You may find the module named `DemoTest`, after install it, the content type `By Line` will be available on Content.\

### Task Completion
1) Created Custom Content Type with image field on form.
2) Modified Byline on `By Line` Content Type with `By {author} {author_picture} on {date}`.
3) Using module to override node template.
4) Programatically Adding Title, Body & Image field.
5) Styling by line, done with simple css (no sass).
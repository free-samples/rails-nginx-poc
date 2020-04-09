## Setup

clone

build docker images with

```
docker-compose build --no-cache
```

start containers with

```
docker-compose up -d
```

run migrations and seeds

```
docker exec -it rails_nginx_poc_app_1 rails db:migrate
docker exec -it rails_nginx_poc_app_1 rails db:seed
```
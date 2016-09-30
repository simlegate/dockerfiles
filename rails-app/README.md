### Build
compose will up five containers to keep this rails app

- Nginx container
- Rails container
- Sidekiq container
- Postgres container
- Redis container

#### Build Nginx docker image
* generate static files by

        RAILS_ENV=production rake assets:precompile

* build image

        docker build -t app-proxy -f dockers/Dockerfile-nginx .

#### Build Rails docker image

    docker build -t app-backend -f dockers/Dockerfile .

#### Launch project

    docker-compose -f dockers/docker-compose.yml up

#### Visit web

    http://{host ip of docker}:9000/users

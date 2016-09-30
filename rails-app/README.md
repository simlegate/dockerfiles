#### build Nginx docker image
* generate static files by

        RAILS_ENV=production rake assets:precompile

* build image

        docker build -t app-proxy -f dockers/Dockerfile-nginx .

#### build Rails docker image

    docker build -t app-backend -f dockers/Dockerfile .

#### launch project

    docker-compose -f dockers/docker-compose.yml up

#### visit web

    http://{host ip of docker}:9000/users


docker service create --name registry --publish published=5000,target=5000 registry:2

docker network create -d overlay --attachable svc-overlay-network

docker stack deploy -c docker-compose.yml mysql

docker-compose up

docker-compose up -d

docker-compose down

docker-compose rm -f

http://localhost:7890/

bash into image:
docker run -it -d IMAGE bin/bash

bash into running container:
docker exec -it CONTAINER_ID /bin/bash
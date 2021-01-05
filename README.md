# MySQL Service

#### create private docker registry
```
docker service create --name registry --publish published=5000,target=5000 registry:2
```

#### create overlay network for services
```
docker network create -d overlay --attachable svc-overlay-network
```

#### start a docker service
```
docker stack deploy -c docker-compose.yml mysql
```

#### run with docker-compose
```
docker-compose up
docker-compose up -d

docker-compose down
docker-compose rm -f
```

#### adminer url
```
http://localhost:7890/
```

#### basic docker usage
```
# bash into a docker image
docker run -it -d <IMAGE_NAME> /bin/bash

# bash into a running docker container
docker exec -it <CONTAINER_ID> /bin/bash
```

#### dump SQL data for backup
```
docker run -it -v C:\Code\svc-mysql\dump:/dump --net=svc-overlay-network -t mysql /bin/bash
# (for checking hostname db exist or not)
# apt update
# apt-get install dnsutils
# nslookup db
mysqldump -h db -u root -p mydb > dump.sql
cp dump.sql ./dump
exit
```

docker-compose down
docker-compose down --remove-orphans
docker image prune -a -f
docker network prune
docker volume prune -f
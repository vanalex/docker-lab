docker-compose -f traefik-docker-compose.yml up -d
docker-compose -f whoami-docker-compose.yml up -d
docker-compose -f nginx-docker-compose.yml up -d
docker-compose -f apache-docker-compose.yml up -d
docker-compose -f portainer-docker-compose.yml up -d
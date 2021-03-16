docker volume create pgdata
docker volume create mongodata
docker volume create esdata
docker-compose -p services -f services.yml up -d
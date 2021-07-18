#INICIANDO O docker
docker-compose up -d --build   

#PARANDO O docker
docker-compose down

#LISTANDO O docker
docker ps

#ACESSANDO O BANCO DE DADOS REDIS
docker-compose run redis redis-cli -h redis

#INSTALANDO LARAVEL 8.0
docker-compose run composer create-project laravel/laravel .

#APOS INSTALACAO REINICIAR O docker
docker-compose up -d
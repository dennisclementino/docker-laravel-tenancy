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

#CONFIGURANDO A CONEXAO COM O MYSQL 
DB_CONNECTION=mysql 
DB_HOST=mysql # faz referencia ao mysql do docker
DB_PORT=3306
DB_DATABASE=db_laravel_tenancy # nome banco de dados configurado no docker-composer
DB_USERNAME=root # user do banco de dados configurado no docker-composer
DB_PASSWORD=root # senha do banco de dados configurado no docker-composer

#RODANDO MIGRATE NO docker
docker-compose run artisan migrate

#END CONFIGURACOES ------

#BIBLIOTECAS ADICIONAIS

#INSTALANDO O O LIVEWIRE
docker-compose run composer require livewire/livewire laravel-frontend-presets/tall

#INSTALANDO O AUTH (AUTENTICACAO)
docker-compose run artisan ui tall --auth

#NPM INSTAL 
docker-compose run npm install

#NPM DEV
docker-compose run npm dev  

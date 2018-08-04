Php-fpm com módulos adicionais

Baseado na imagem **php:7.2.8-fpm-alpine**

Módulos:
- mysqli
- pdo_mysql
- mbstring
- xml
- dom
- curl
- apcu
- zip
- composer v1.6.5

como executar:
```
docker build . -t phpstart
```

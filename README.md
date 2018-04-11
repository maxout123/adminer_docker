# Adminer Docker image

Run [Adminer](https://github.com/vrana/adminer/) with Nginx and Php-fpm


## Usage with docker-compose

Following example will bring you [Adminer](https://github.com/vrana/adminer/) on `http://localhost:80`
where you can enjoy your happy MySQL administration.

```
docker-compose up -d
```


## Usage with k8s

```
kubectl apply -f deployment.yaml
```

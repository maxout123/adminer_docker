# Adminer Docker image

Run Adminer with Nginx and Php-fpm


## Usage with docker-compose

Following example will bring you Adminer on `http://localhost:80`
where you can enjoy your happy MySQL administration.

```
docker-compose up -d
```


## Usage with k8s

```
kubectl apply -f deployment.yaml
```

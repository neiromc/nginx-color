## Start
```bash
docker run -d -p 8888:80 -e COLOR=red -e BGCOLOR=yellow --name nginx neiromc/nginx-color:latest
```

## Resulst
http://localhost:8888

## Stop
```bash
docker rm -f nginx
```

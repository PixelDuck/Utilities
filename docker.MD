# Stop an unstable vm
```/usr/local/bin/VBoxManage startvm default --type emergencystop```

# Docker with accesd, graphite and seyren
```
docker run -d --name graphite --restart=always -p 80:80 -p 2003-2004:2003-2004 -p 2023-2024:2023-2024 -p 8125:8125/udp -p 8126:8126 hopsoft/graphite-statsd
docker run -d --name mongodb mongo:3.0.8
docker run -d -p 8080:8080 --name seyren --link mongodb:mongodb -it usman/docker-seyren http://192.168.99.100
```

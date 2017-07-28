sudo docker stop jenkins2-master && sudo docker rm jenkins2-master
sudo docker run -u 1000 -p 8085:8080 --restart=always --name=jenkins2-master --volumes-from=jenkins2-data -d jenkins2


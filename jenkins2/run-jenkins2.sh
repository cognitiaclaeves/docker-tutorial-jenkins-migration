sudo docker stop jenkins2-master | echo  && sudo docker rm jenkins2-master | echo
sudo docker run -u 1000 -p 8082:8080 --restart=always --name=jenkins2-master --volumes-from=jenkins2-data -d jenkins2


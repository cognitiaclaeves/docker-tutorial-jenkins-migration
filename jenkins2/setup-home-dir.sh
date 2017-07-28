
sudo mkdir /home/jenkins2 2>/dev/null
sudo docker run -d --name jenkins2-master jenkins2
sudo docker cp jenkins2-master:/var/jenkins_home /home/jenkins2/
sudo chown -R 1000 /home/jenkins2


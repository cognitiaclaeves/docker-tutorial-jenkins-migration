
sudo mkdir /home/jenkins1 2>/dev/null
sudo docker run -d --name jenkins1 jenkins:1.658
sudo docker cp jenkins1:/var/jenkins_home /home/jenkins1/
sudo chown -R 1000 /home/jenkins1


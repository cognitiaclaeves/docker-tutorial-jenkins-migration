sudo docker stop jenkins1 | echo && sudo docker rm -v jenkins1

# sudo docker run -d --name jenkins1 -p8081:8080 -p 50001:50000 -v /home/jenkins1/jenkins_home:/var/jenkins_home:z jenkins:1.658
sudo docker run -d --name jenkins1 -p8081:8080 -v /home/jenkins1/jenkins_home:/var/jenkins_home:z -v /home/jenkins-shared:/home/jenkins-shared:z jenkins:1.658


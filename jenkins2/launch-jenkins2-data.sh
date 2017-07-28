sudo docker stop jenkins2-data | echo  && sudo docker rm -v jenkins2-data | echo
sudo docker run -u 1000 --name jenkins2-data -v /home/jenkins2/jenkins_home:/var/jenkins_home:z -v /home/jenkins2/jenkins_log:/var/log/jenkins:z jenkins2-data


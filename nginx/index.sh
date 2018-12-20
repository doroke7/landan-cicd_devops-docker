sudo docker build -t nginx-image .
sudo docker container stop nginx-container
sudo docker container prune -f
sudo docker run --name nginx-container -v /home/vagrant/www/landan-service_backend-php:/home/docker/www/landan-service_backend-php -d -p 80:80 nginx-image
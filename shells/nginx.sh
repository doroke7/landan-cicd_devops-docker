sudo docker build -t nginx-image - < Dockerfiles/nginx
sudo docker container stop nginx-container
sudo docker container prune -f
sudo docker run --name nginx-container -d -p 8080:80 nginx-image
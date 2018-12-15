sudo docker build -t nginx-image - < nginx/Dockerfile
sudo docker container stop nginx-container
sudo docker container prune -f
sudo docker run --name nginx-container -d -p 8080:80 nginx-image
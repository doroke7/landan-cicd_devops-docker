sudo docker build -t nginx-image .
sudo docker container stop nginx-container
sudo docker container prune -f
sudo docker run --name nginx-container -d -p 80:80 nginx-image
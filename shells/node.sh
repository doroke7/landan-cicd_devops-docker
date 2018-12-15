sudo docker build -t node-image - < node/Dockerfile
# sudo docker container stop node-container
sudo docker container prune -f

sudo docker run -itd --name node-container -v /data:/home/vagrant/www node-image
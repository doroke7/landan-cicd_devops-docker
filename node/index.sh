sudo docker build -t node-image - < node/Dockerfile
# sudo docker container stop node-container
sudo docker container prune -f

# docker 的 mount 只会在单一 container ，不会垮 image
sudo docker run -itd --name node-container --mount type=bind,src=/home/vagrant/www,dst=/home/docker/www node-image
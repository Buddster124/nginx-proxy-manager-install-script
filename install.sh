sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install docker
docker run -d \
    --name=nginx-proxy-manager \
    -p 8181:8181 \
    -p 8080:8080 \
    -p 4443:4443 \
    -v /docker/appdata/nginx-proxy-manager:/config:rw \
    jlesage/nginx-proxy-manager

sudo ufw allow 8181
sudo ufw allow 8080
sudo ufw allow 4443

#!/bin/bash
ssh-keygen
cat ~/.ssh/id_rsa.pub
if [ ! -n "$(grep "^bitbucket.org " ~/.ssh/known_hosts)" ]; then ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts 2>/dev/null; fi

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
source ~/.bashrc
nvm install 8.2.1
npm install pm2 -g
npm install frontail -g

sudo yum install vim


sudo chmod +x buildlog-admin.txt
sudo chmod +x buildlog-api.txt
sudo chmod +x buildlog-app.txt

sudo yum install wget
cd ~/app/certs/certbot/ && wget https://dl.eff.org/certbot-auto && chmod a+x certbot-auto

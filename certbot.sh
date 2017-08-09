docker exec -i 98f59c421729 /bin/bash -c "chmod o+x ./etc/nginx/certs/certbot-auto && ./etc/nginx/certs/certbot-auto certonly --standalone --preferred-challenges http --domains mushtarek.org -n --config-dir /var/www/app/certs/certbot --agree-tos --email markbame.martires@gmail.com --dry-run"
docker exec -i 98f59c421729 /bin/bash -c "chmod o+x ./etc/nginx/certs/certbot-auto && ./etc/nginx/certs/certbot-auto certonly --standalone --preferred-challenges http --domains admin.newssocial.co.uk -n --config-dir /var/www/app/certs/certbot/admin --agree-tos --email markbame.martires@gmail.com --dry-run"

cp /var/www/app/certs/certbot/fullchain.pem /etc/nginx/certs/server.crt
cp /var/www/app/certs/certbot/admin/fullchain.pem /etc/nginx/certs/adminserver.crt
cp /var/www/app/certs/certbot/privkey.pem /etc/nginx/certs/server.key
cp /var/www/app/certs/certbot/admin/privkey.pem /etc/nginx/certs/adminserver.key
docker stop 98f59c421729
docker start 98f59c421729
docker start ac29210b5df9

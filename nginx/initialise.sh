apt-get install software-properties-common python-software-properties -y
apt-add-repository ppa:nginx/stable -y
apt-get update
apt-get install nginx -y

#todo add lines to update and get keys for new ppa above
#todo - apt install nginx

mkdir -p /data/www/logs
mkdir -p /data/www/cache
useradd nginx
chown -R nginx:nginx /data/www
echo 10.0.0.53	lancache-steam >> /etc/hosts
echo 10.0.0.54  lancache-riot >> /etc/hosts
echo 10.0.0.55  lancache-blizzard >> /etc/hosts
echo 10.0.0.56  lancache-hirez >> /etc/hosts
echo 10.0.0.57  lancache-origin >> /etc/hosts
echo 10.0.0.58  lancache-sony >> /etc/hosts
cd /etc/nginx && ln -s -f /home/weby/servers/nginx/* .


service nginx restart
ln /data/www/logs/* /var/log/nginx/

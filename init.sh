sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 --chdir /home/box/web/etc hello:app &

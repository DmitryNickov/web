sudo apt-get update
sudo apt-get install -y python3.5

sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart

virtualenv -p python3.5 /home/box/web/venv/
source /home/box/web/venv/bin/activate

pip install django==2.1
pip install gunicorn

#sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo gunicorn -b 0.0.0.0:8080 --chdir /home/box/web/etc hello:app &

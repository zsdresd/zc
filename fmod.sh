sudo -i
apt-get install unzip
wget https://dl-web.dropbox.com/s/ow1ac359afgwmge/buzhuwu13800.zip
wget https://dl-web.dropbox.com/s/1jy8xwdoqku072e/fmod.zip
wget https://dl-web.dropbox.com/s/zqijpen92ll9rfh/rclone.conf
unzip fmod.zip
mv /root/fmod /usr/bin
chmod +x /usr/bin/fmod
mv rclone.conf /root/.rclone.conf
unzip buzhuwu13800.zip

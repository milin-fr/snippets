1. prestashop 1.6.1.18
1. PHP7.1
1. sudo apt update
1. sudo apt full-upgrade
1. sudo reboot
1. sudo apt install unzip
1. sudo apt install apache2 -y
2. sudo service apache2 status
3. sudo ufw app list
4. sudo ufw app info "Apache Full"
5. sudo apt install mysql-server -y
6. sudo ss -tap | grep mysql
7. sudo mysql
8. ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
9. exit
10. sudo mysql_secure_installation
11. mysql -u root -p
11. CREATE DATABASE prestadb;
11. CREATE USER 'prestauser'@'localhost' IDENTIFIED BY 'password';
ALTER USER 'prestauser' IDENTIFIED WITH mysql_native_password BY 'password';
14. GRANT ALL PRIVILEGES ON prestadb.* TO 'prestauser'@'localhost' WITH GRANT OPTION;
12. CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password';
13. CREATE USER 'sammy' IDENTIFIED BY 'password';

15. FLUSH PRIVILEGES;
16. exit
17. mysql -u sammy -p
18. systemctl status mysql.service
19. sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
20. bind-address = 127.0.0.1
21. sudo systemctl restart mysql
22. sudo ufw allow from remote_ip_address to any port 3306
23. sudo apt-get install software-properties-common
23. sudo add-apt-repository ppa:ondrej/php
23. sudo apt-get update
23. sudo apt install php7.1 libapache2-mod-php php7.1-mysql php7.1-zip php7.1-simplexml php7.1-curl php7.1-gd php7.1-intl php7.1-mbstring php7.1-cli php7.1-xml php7.1-json -y
24. sudo nano /etc/apache2/mods-enabled/dir.conf


25. sudo apt-get install vsftpd
systemctl start vsftpdsystemctl enable vsftpd
sudo useradd -m *ftpuser*
sudo passwd *ftpuser*

mkdir /home/vsftp/ftpchown nobody:nogroup /home/vsftp/ftpchmod a-w /home/vsftp/ftp
mkdir /home/vsftp/ftp/testchown vsftp:vsftp /home/vsftp/ftp/test

sudo nano /etc/vsftpd.conf
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/emptypam_service_name=vsftpd
pasv_enable=Yes
pasv_min_port=10000
pasv_max_port=11000
user_sub_token=$USER
local_root=/home/$USER/ftpuserlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
rsa_cert_file=/etc/cert/vsftpd.pem
rsa_private_key_file=/etc/cert/vsftpd.pem
ssl_enable=YES
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
require_ssl_reuse=NO
ssl_ciphers=HIGH

sudo nano /etc/vsftpd.userlist
vsftp
mkdir /etc/certopenssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/cert/vsftpd.pem -out /etc/cert/vsftpd.pem
systemctl restart vsftpd




26. sudo systemctl restart apache2
26. sudo service vsftpd restart
26. 


26. sudo nano /etc/php/7.1/apache2/php.ini

26. memory_limit = 512M
post_max_size = 32M
upload_max_filesize = 32M
date.timezone = Asia/Kolkata
26. sudo systemctl restart apache2
27. sudo nano /var/www/html/info.php
28. <?php
phpinfo ();
?>




29. [server-ip-address]/info.php
30. LAMP end
31. wget https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.4/prestashop_1.7.7.4.zip
32. sudo unzip prestashop_1.7.7.4.zip -d /var/www/html/prestashop
33. sudo chown -R www-data:www-data /var/www/html/prestashop/
34. sudo chmod -R 755 /var/www/html/prestashop
36. /etc/apache2/apache2.conf
<Directory /var/www/html/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>
37. sudo a2ensite prestashop
38. sudo a2enmod rewrite
39. sudo systemctl restart apache2

sudo mv  /home/user/ftp/files/img /var/www/files

1. sudo apt update -y
2. sudo apt -y install squid
3. sudo systemctl start squid
4. sudo systemctl enable squid
5. sudo systemctl status squid 
6. sudo nano /etc/squid/squid.conf
7. http_port 3128
8. http_access allow localnet
9. acl localnet src "my ip"

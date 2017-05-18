sudo yum -y install wget
wget http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
sudo yum -y localinstall mysql57-community-release-el7-7.noarch.rpm
sudo yum -y install mysql-community-server
sudo systemctl start mysqld

# vagrant-mysql-minimal

A quick way to run up MySQL 5.7 with minimal CentOS7

## Details

Sets up 64-bit CentOS 7.0 base box, minimal install. Uses a bash script to provision MySQL 5.7.18.

MySQL 5.7.7 or higher is required by Laravel 5.4 if you want to avoid the default string length issue here https://laravel.com/docs/master/migrations#creating-indexes

Tested using Vagrant 1.8.7 on virtualbox 5.1.22

## Installation

```
vagrant box add minimal/centos7
vagrant up
```

## Database Setup

SSH into the VM

```
vagrant ssh
```

then

```
grep 'temporary password' /var/log/mysqld.log
mysql_secure_installation
mysql -u root -p
create user 'myuser'@'%' identified by 'mypassword';
grant privileges on *.* to 'myuser'@'%' with grant option;
flush privileges;
```

You can now access the database on port 33060 with username 'myuser' and password 'mypassword'

Note that MySQL 5.7 enforces a strict password policy by default



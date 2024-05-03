-- aprendiendo direcciones ip y puertos con pedro
clases etc...

Maquina virtual..
ingresar..
ssh p4student@172.16.101.132

p4student@172.16.101.132
yes
Direccion ip: 172.16.101.132
passwords: p4student

pwd es un comando para saber en donde esta ubicada en el terminal
ls -l para saber el total
end//

## Cambiar contraseña


passwd

##  Verificar version de MySQL


mysql -V

## instalar mysql


sudo apt-get install mysql-server

## informacion servidor


systemctl status mysql

## acceder a mysql


sudo mysql

## Cambiar contraseña a superUsuario


ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1102381910';

## reiniciar privilegios


flush privileges;

## acceder a mysql


sudo mysql -u root -p

## Consultar IP


ip addr

## COnfiguracion de mysql


sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

## Reiniciar MYSQL SERVER


systemctl restart mysql

## despues se vuelve a ingresar

sudo mysql -u root -p

## se crea usuario

create user 'root@'%' identified by '1005323441'
   1  shutdown -f now
    2  clear
    3  passwd
    4  exit
    5  ls -l
    6  cd ..
    7  cd p4student/
    8  cd ..
    9  ls -l
   10  pwd
   11  cd /home/p4student/
   12  touch miText.txt
   13  ls -l
   14  mkdir miCarpeta
   15  ls -l
   16  nano miText.txt 
   17  clear
   18  sudo apt-get update
   19  sudo apt install mysql-server
   20* 
   21  mysql -v
   22  mysql -V
   23  systemctl status mysql
   24  sudo mysql
   25  sudo mysql 
   26  sudo mysql
   27  ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1005323441';
   28  sudo mysql
   29  sudo service mysql stop
   30  sudo killall -KILL mysql mysqld_safe mysqld
   31  sudo mysql
   32  mysql -V
   33  sudo mysql
   34  sudo mysql -p
   35  sudo mysql 
   36  sudo mysql -u root -p
   37  sudo apt install mysql-server
   38  sudo mysql 
   39  sudo mysql -p
   40  sudo apt update
   41  sudo apt install mysql-server
   42  sudo systemctl start mysql.service
   43  sudo mysql
   44  sudo mysql -p
   45  sudo apt-get remove --purge mysql-server mysql-client mysql-common
   46  sudo apt-get autoclean
   47  sudo apt-get autoremove
   48  sudo rm -rf /var/lib/mysql
   49  sudo mysql
   50  sudo apt install mysql-server
   51  sudo systemctl start mysql.service~
   52  sudo mysql
   53  sudo mysql -p
   54  sudo mysql -u root -p
   55  ip addr
   56  sudo mysql_secure_installation
   57  nano /etc/mysql/mysql.conf.d/mysqld.cnf
   58  sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
   59  systemctl restart mysql
   60  systemctl start mysql
   61  systemctl status mysql
   62  sudo mysql -u root -p
   63  history

## y luego se ponen los privilegios

grant all privileges on *.* to 'root'@'%' with grant option;


## todos los comandos

   1  shutdown -f now
    2  clear
    3  passwd
    4  exit
    5  ls -l
    6  cd ..
    7  cd p4student/
    8  cd ..
    9  ls -l
   10  pwd
   11  cd /home/p4student/
   12  touch miText.txt
   13  ls -l
   14  mkdir miCarpeta
   15  ls -l
   16  nano miText.txt 
   17  clear
   18  sudo apt-get update
   19  sudo apt install mysql-server
   20* 
   21  mysql -v
   22  mysql -V
   23  systemctl status mysql
   24  sudo mysql
   25  sudo mysql 
   26  sudo mysql
   27  ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1005323441';
   28  sudo mysql
   29  sudo service mysql stop
   30  sudo killall -KILL mysql mysqld_safe mysqld
   31  sudo mysql
   32  mysql -V
   33  sudo mysql
   34  sudo mysql -p
   35  sudo mysql 
   36  sudo mysql -u root -p
   37  sudo apt install mysql-server
   38  sudo mysql 
   39  sudo mysql -p
   40  sudo apt update
   41  sudo apt install mysql-server
   42  sudo systemctl start mysql.service
   43  sudo mysql
   44  sudo mysql -p
   45  sudo apt-get remove --purge mysql-server mysql-client mysql-common
   46  sudo apt-get autoclean
   47  sudo apt-get autoremove
   48  sudo rm -rf /var/lib/mysql
   49  sudo mysql
   50  sudo apt install mysql-server
   51  sudo systemctl start mysql.service~
   52  sudo mysql
   53  sudo mysql -p
   54  sudo mysql -u root -p
   55  ip addr
   56  sudo mysql_secure_installation
   57  nano /etc/mysql/mysql.conf.d/mysqld.cnf
   58  sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
   59  systemctl restart mysql
   60  systemctl start mysql
   61  systemctl status mysql
   62  sudo mysql -u root -p
   63  history
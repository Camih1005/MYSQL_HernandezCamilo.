-- creacion de permisos

create database dia10;

use dia10;

-- comando para crear un usuario que puede acceder globalmente

create user 'camilo'@'%' identified by 'camilo123';

-- comando para ver los usuario en mysql
SELECT user FROM mysql.user;

-- comando para crear un usuario que puede acceder localmente

create user 'camiloLH'@'localhost' identified by 'camilo123';

-- Revisar permisos

show grants for 'camilo'@'%';



-- ejempo tabla

create table persona(
id int,
nombre varchar(255),
Apellido varchar(155)
);

INSERT INTO persona (id, nombre, Apellido) VALUES (1, 'Juan', 'García');
INSERT INTO persona (id, nombre, Apellido) VALUES (2, 'María', 'López');
INSERT INTO persona (id, nombre, Apellido) VALUES (3, 'Pedro', 'Martínez');
INSERT INTO persona (id, nombre, Apellido) VALUES (4, 'Ana', 'Sánchez');
INSERT INTO persona (id, nombre, Apellido) VALUES (5, 'Luis', 'Pérez');
INSERT INTO persona (id, nombre, Apellido) VALUES (6, 'Laura', 'Gómez');
INSERT INTO persona (id, nombre, Apellido) VALUES (7, 'Carlos', 'Rodríguez');
INSERT INTO persona (id, nombre, Apellido) VALUES (8, 'Sofía', 'Díaz');
INSERT INTO persona (id, nombre, Apellido) VALUES (9, 'Javier', 'Fernández');
INSERT INTO persona (id, nombre, Apellido) VALUES (10, 'Miguel', 'Hernández');

select * from persona;

-- asigna permisos

-- dia10.* se puede o en el asterisco puede ir el nombre dela tabla

grant select on dia10.* to 'camilo'@'%';

-- OO
grant select on dia10.* to 'camilo'@'localhost';


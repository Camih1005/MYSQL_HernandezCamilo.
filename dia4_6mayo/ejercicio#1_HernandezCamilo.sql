-- creacion de la base de datos

create database idiomas;
use idiomas;

-- creacion de las tablas idiomas
create table pais(
id_pais int primary key,
nombre varchar(20),
continente varchar(50),
poblacion int
);

create table ciudad(
id_ciudad int primary key,
nombre varchar(20),
id_pais int,
foreign key(id_pais) references pais(id_pais)
);

create table idioma(
id_idioma int primary key,
idioma varchar(50)
);

create table idioma_pais(
id_idioma int,
id_pais int,
is_oficial tinyint(1),
foreign key(id_pais)references pais(id_pais),
foreign key(id_idioma) references idioma(id_idioma),
primary key(id_idioma,id_pais)
);


show tables;

-- inserciones para los paises

INSERT into pais values(1,"colombia","sur america",51870000),
(2,"brasil","sur america",215300000),(3,"estados unidos","north america",333300000),
(4,"españa","europa",42780000),(5,"venezuela","sur america",28300000),(6,"luxemburgo","europa",653103),
(7,"portugal","europa",10467366),(8,"japon","asia",125171000),(9,"china","asia",1411750000),
(10,"india","asia",1414555000)
;

-- inserciones para las ciudades

INSERT into ciudad values
(20,"bucaramanga",1),
(42,"sao paulo",2),
(11,"miami",3),
(12,"madrid",4),
(19,"merida",5),
(15,"vianden",6),
(26,"lisboa",7),
(23,"tokio",8),
(29,"hiroshima",9),
(30,"calcuta",10);

-- inserciones para los idiomas

INSERT into idioma values
(1,"ingles"),
(2,"chino mandarin"),
(3,"Hindi"),
(4,"español"),
(7,"bengali"),
(9,"japones"),
(10,"chino"),
(11,"aleman"),
(12,"portugues")
;

-- inserciones para idioma_pais

INSERT into idioma_pais values
(1,3,1),
(2,9,1),
(3,10,1),
(4,1,1),
(7,10,1),
(9,8,1),
(10,9,1),
(11,9,1),
(12,2,1);

-- consulta con join

select * from pais as p join idioma_pais as i
on p.id_pais = i.id_pais ;

-- desarrollado por camilo hernandez torres p4

-
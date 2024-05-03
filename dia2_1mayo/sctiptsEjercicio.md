## create database dowloands

## use dowloands 

 create table usuarios(
 usuario_id int primary key,
 email varchar(100) not null,
 primer_nombre varchar(100) not null,
apellido varchar(100) not null
);

create table productos(
id_producto int primary key,
nombre varchar(100) not null
);

create table descargas(
id_descargas int primary key,
id_producto int,
usuario_id int,
foreign key(id_producto) references productos(id_producto),
foreign key(usuario_id) references usuarios(usuario_id)
)

INSERT INTO usuarios(usuario_id , email, primer_nombre,apellido) VALUES
(11111, 'Guitars@dasarr','camilo','hernandez');

INSERT INTO productos(id_producto,nombre ) VALUES(11113,'cacas');


INSERT INTO descargas(id_descargas) VALUES(11113);

select * from usuarios u 

------------------------------------------------------------------------



## CREATE DATABASE MyGuitarShop;
## GO

USE MyGuitarShop;

-- create the tables for the database
CREATE TABLE Categories (
  CategoryID        INT            PRIMARY KEY   ,
  CategoryName      VARCHAR(255)   NOT NULL      UNIQUE
);
show tables;

CREATE TABLE Products (
  ProductID         INT PRIMARY KEY,
  CategoryID        INT, 
  ProductCode       VARCHAR(10)    NOT NULL UNIQUE,
  ProductName       VARCHAR(255)   NOT NULL,
  Description       TEXT           NOT NULL,
  ListPrice         double          NOT NULL,
  DiscountPercent   double         NOT NULL DEFAULT 0.00,
  DateAdded         DATETIME not null,
  foreign key(CategoryID)references Categories(CategoryID)
);

CREATE TABLE Customers (
  CustomerID           INT            PRIMARY KEY,
  EmailAddress         VARCHAR(255)   NOT NULL      UNIQUE,
  Password             VARCHAR(60)    NOT NULL,
  FirstName            VARCHAR(60)    NOT NULL,
  LastName             VARCHAR(60)    NOT NULL,
  ShippingAddressID    INT                          DEFAULT NULL,
  BillingAddressID     INT                          DEFAULT NULL
);

CREATE TABLE Addresses (
  AddressID          INT PRIMARY KEY ,
  CustomerID         INT ,
  Line1              VARCHAR(60)    NOT NULL,
  Line2              VARCHAR(60)    DEFAULT NULL,
  City               VARCHAR(40)    NOT NULL,
  State              VARCHAR(2)     NOT NULL,
  ZipCode            VARCHAR(10)    NOT NULL,
  Phone              VARCHAR(12)    NOT NULL,
  Disabled           INT            NOT NULL      DEFAULT 0,
  foreign key(CustomerID)references Customers(CustomerID)
);

CREATE TABLE Orders (
  OrderID           INT PRIMARY KEY,
  CustomerID        INT ,
  OrderDate         DATETIME       NOT NULL,
  ShipAmount        double          NOT NULL,
  TaxAmount         double         NOT NULL,
  ShipDate          DATETIME   DEFAULT NULL,
  ShipAddressID     INT            NOT NULL,
  CardType          VARCHAR(50)    NOT NULL,
  CardNumber        CHAR(16)       NOT NULL,
  CardExpires       CHAR(7)        NOT NULL,
  BillingAddressID  INT            NOT NULL ,
  foreign key(CustomerID)references Customers(CustomerID)
);

CREATE TABLE OrderItems (
  ItemID             INT ,
  OrderID            INT ,
  ProductID          INT ,
  ItemPrice          double  NOT NULL,
  DiscountAmount     double  NOT NULL,
  Quantity           INT  NOT NULL,
  Primary key(ItemID,OrderId, ProductID),
  foreign key(OrderID)references Orders(OrderID),
  foreign key(ProductID)references Products(ProductID)
);

CREATE TABLE Administrators (
  AdminID           INT  PRIMARY KEY ,
  EmailAddress      VARCHAR(255)   NOT NULL,
  Password          VARCHAR(255)   NOT NULL,
  FirstName         VARCHAR(255)   NOT NULL,
  LastName          VARCHAR(255)   NOT NULL
);



INSERT INTO Categories (CategoryID, CategoryName) VALUES
(11111, 'Guitars'),
(22222, 'Basses'),
(33333, 'Drums'), 
(44444, 'Keyboards');



INSERT INTO Products (ProductID, CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded) VALUES
(199, 11111, 'strat', 'Fender Stratocaster', 'The Fender Stratocaster is the electric guitar design that changed the world. New features include a tinted neck, parchment pickguard and control knobs, and a ''70s-style logo. Includes select alder body, 21-fret maple neck with your choice of a rosewood or maple fretboard, 3 single-coil pickups, vintage-style tremolo, and die-cast tuning keys. This guitar features a thicker bridge block for increased sustain and a more stable point of contact with the strings. At this low price, why play anything but the real thing?\r\n\r\nFeatures:\r\n\r\n* New features:\r\n* Thicker bridge block\r\n* 3-ply parchment pick guard\r\n* Tinted neck', '699.00', '30.00', '2011-10-30 09:32:40'),
(299, 22222, 'les_paul', 'Gibson Les Paul', 'This Les Paul guitar offers a carved top and humbucking pickups. It has a simple yet elegant design. Cutting-yet-rich tone?the hallmark of the Les Paul?pours out of the 490R and 498T Alnico II magnet humbucker pickups, which are mounted on a carved maple top with a mahogany back. The faded finish models are equipped with BurstBucker Pro pickups and a mahogany top. This guitar includes a Gibson hardshell case (Faded and satin finish models come with a gig bag) and a limited lifetime warranty.\r\n\r\nFeatures:\r\n\r\n* Carved maple top and mahogany back (Mahogany top on faded finish models)\r\n* Mahogany neck, ''59 Rounded Les Paul\r\n* Rosewood fingerboard (Ebony on Alpine white)\r\n* Tune-O-Matic bridge with stopbar\r\n* Chrome or gold hardware\r\n* 490R and 498T Alnico 2 magnet humbucker pickups (BurstBucker Pro on faded finish models)\r\n* 2 volume and 2 tone knobs, 3-way switch', '1199.00', '30.00', '2011-12-05 16:33:13'),
(399, 33333, 'sg', 'Gibson SG', 'This Gibson SG electric guitar takes the best of the ''62 original and adds the longer and sturdier neck joint of the late ''60s models. All the classic features you''d expect from a historic guitar. Hot humbuckers go from rich, sweet lightning to warm, tingling waves of sustain. A silky-fast rosewood fretboard plays like a dream. The original-style beveled mahogany body looks like a million bucks. Plus, Tune-O-Matic bridge and chrome hardware. Limited lifetime warranty. Includes hardshell case.\r\n\r\nFeatures:\r\n\r\n* Double-cutaway beveled mahogany body\r\n* Set mahogany neck with rounded ''50s profile\r\n* Bound rosewood fingerboard with trapezoid inlays\r\n* Tune-O-Matic bridge with stopbar tailpiece\r\n* Chrome hardware\r\n* 490R humbucker in the neck position\r\n* 498T humbucker in the bridge position\r\n* 2 volume knobs, 2 tone knobs, 3-way switch\r\n* 24-3/4" scale', '2517.00', '52.00', '2015-02-04 11:04:31'),
(499, 44444, 'fg700s', 'Yamaha FG700S', 'The Yamaha FG700S solid top acoustic guitar has the ultimate combo for projection and pure tone. The expertly braced spruce top speaks clearly atop the rosewood body. It has a rosewood fingerboard, rosewood bridge, die-cast tuners, body and neck binding, and a tortoise pickguard.\r\n\r\nFeatures:\r\n\r\n* Solid Sitka spruce top\r\n* Rosewood back and sides\r\n* Rosewood fingerboard\r\n* Rosewood bridge\r\n* White/black body and neck binding\r\n* Die-cast tuners\r\n* Tortoise pickguard\r\n* Limited lifetime warranty', '489.99', '38.00', '2015-06-01 11:12:59')



INSERT INTO Customers (CustomerID, EmailAddress, Password, FirstName, LastName, ShippingAddressID, BillingAddressID) VALUES
(1, 'allan.sherwood@yahoo.com', '650215acec746f0e32bdfff387439eefc1358737', 'Allan', 'Sherwood', 11, 21),
(2, 'barryz@gmail.com', '3f563468d42a448cb1e56924529f6e7bbe529cc7', 'Barry', 'Zimmer', 31, 31),
(3, 'christineb@solarone.com', 'ed19f5c0833094026a2f1e9e6f08a35d26037066', 'Christine', 'Brown', 41, 41),
(4, 'david.goldstein@hotmail.com', 'b444ac06613fc8d63795be9ad0beaf55011936ac', 'David', 'Goldstein', 51, 61),
(5, 'erinv@gmail.com', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', 'Erin', 'Valentino', 71, 71),
(6, 'frankwilson@sbcglobal.net', '3ebfa301dc59196f18593c45e519287a23297589', 'Frank Lee', 'Wilson', 81, 81),
(7, 'gary_hernandez@yahoo.com', '1ff2b3704aede04eecb51e50ca698efd50a1379b', 'Gary', 'Hernandez', 91, 101),
(8, 'heatheresway@mac.com', '911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23', 'Heather', 'Esway', 111, 112);


INSERT INTO Addresses (AddressID, CustomerID, Line1, Line2, City, State, ZipCode, Phone, Disabled) VALUES
(11, 1, '100 East Ridgewood Ave.', '', 'Paramus', 'NJ', '07652', '201-653-4472', 0),
(21, 1, '21 Rosewood Rd.', '', 'Woodcliff Lake', 'NJ', '07677', '201-653-4472', 0),
(31, 2, '16285 Wendell St.', '', 'Omaha', 'NE', '68135', '402-896-2576', 0),
(41, 3, '19270 NW Cornell Rd.', '', 'Beaverton', 'OR', '97006', '503-654-1291', 0),
(51, 4, '186 Vermont St.', 'Apt. 2', 'San Francisco', 'CA', '94110', '415-292-6651', 0),
(61, 4, '1374 46th Ave.', '', 'San Francisco', 'CA', '94129', '415-292-6651', 0),
(71, 5, '6982 Palm Ave.', '', 'Fresno', 'CA', '93711', '559-431-2398', 0),
(81, 6, '23 Mountain View St.', '', 'Denver', 'CO', '80208', '303-912-3852', 0),
(91, 7, '7361 N. 41st St.', 'Apt. B', 'New York', 'NY', '10012', '212-335-2093', 0),
(101, 7, '3829 Broadway Ave.', 'Suite 2', 'New York', 'NY', '10012', '212-239-1208', 0),
(111, 8, '2381 Buena Vista St.', '', 'Los Angeles', 'CA', '90023', '213-772-5033', 0),
(112, 8, '291 W. Hollywood Blvd.', '', 'Los Angeles', 'CA', '90024', '213-391-2938', 0);



INSERT INTO Orders (OrderID, CustomerID, OrderDate, ShipAmount, TaxAmount, ShipDate, ShipAddressID, CardType, CardNumber, CardExpires, BillingAddressID) VALUES
(1000, 1, '2015-02-28 09:40:28', '5.00', '32.32', '2015-02-28 15:32:51', 1, 'Visa', '4111111111111111', '04/2015', 2),
(2000, 2, '2015-02-28 11:23:20', '5.00', '0.00', '2015-02-28 12:52:14', 3, 'Visa', '4012888888881881', '08/2016', 3),
(3000, 1, '2015-02-25 09:44:58', '10.00', '89.92', '2015-02-27 9:11:41', 1, 'Visa', '4111111111111111', '04/2015', 2),
(4000, 3, '2015-02-28 15:22:31', '5.00', '0.00', '2015-03-03 16:32:21', 4, 'American Express', '3782822463100005', '04/2013', 4),
(5000, 4, '2015-02-28 05:43:11', '5.00', '0.00', '2015-03-02 14:21:12', 5, 'Visa', '4111111111111111', '04/2016', 6),
(6000, 5, '2015-02-28 18:37:22', '5.00', '0.00', NULL, 7, 'Discover', '6011111111111117', '04/2016', 7),
(7000, 6, '2015-03-01 23:11:12', '15.00', '0.00', '2015-03-03 10:21:35', 8, 'MasterCard', '5555555555554444', '04/2016', 8),
(8000, 7, '2015-03-02 11:26:38', '5.00', '0.00', NULL, 9, 'Visa', '4012888888881881', '04/2016', 10),
(9000, 4, '2015-03-03 12:22:31', '5.00', '0.00', NULL, 5, 'Visa', '4111111111111111', '04/2016', 6);



INSERT INTO OrderItems (ItemID,OrderID, ProductID, ItemPrice, DiscountAmount, Quantity) VALUES
(109,1000, 199, '1199.00', '359.70', 1),
(276,2000, 299, '489.99', '186.20', 1),
(563,3000, 399, '2517.00', '1308.84', 1),
(544,3000, 499, '415.00', '161.85', 1)



INSERT INTO Administrators (AdminID, EmailAddress, Password, FirstName, LastName) VALUES
(1, 'admin@myguitarshop.com', '6a718fbd768c2378b511f8249b54897f940e9022', 'Admin', 'User'),
(2, 'joel@murach.com', '971e95957d3b74d70d79c20c94e9cd91b85f7aae', 'Joel', 'Murach'),
(3, 'mike@murach.com', '3f2975c819cefc686282456aeae3a137bf896ee8', 'Mike', 'Murach');
select * from OrderItems oi  ;

show tables;

SELECT * from Administrators;

---

# create database Parques;
use Parques;
create table personal(
id_cedula int primary key,
nombre_personal varchar(70) not null,
direccion varchar(100) not null,
telFijo varchar(9),
telCelular varchar(13) not null,
sueldo double not null,
id_tipopersona int,
id_parque int,
foreign key(id_tipopersona) references tipo_persona(id_tipo),
foreign key(id_parque) references parque(id_parque)
);
create table tipo_persona(
id_tipo int primary key,
nombre_tipo varchar(50) not null
);
create table parque(
id_parque int primary key,
nombre_parque varchar(100) not null,
direccion varchar(100) not null,
dia_declaracion Date not null,
id_areas int,
foreign key(id_areas) references areas(id_area)
);
create table departamento(
id_departamento int primary key,
nombre_departamento varchar(100) not null,
id_entidad int,
foreign key(id_entidad) references entidad(id_entidad)
);

create table parque_departamento(
id_parque int,
id_departamento int,
primary key(id_parque,id_departamento),
foreign key(id_parque) references parque(id_parque),

foreign key(id_departamento) references departamento(id_departamento)
);
create table entidad(
id_entidad int primary key,
nombre_entidad varchar(100) not null
);
create table areas(
id_area int primary key,
nombre_area varchar(100) not null,
direccion varchar(100) not null,
extencion_m2 double not null
);
create table especie(
id_especie int primary key,
nombre_especie varchar(100) not null,
deno_cientifica varchar(100) not null,
deno_vulgar varchar(100) not null
);
create table area_especie(
id_especie int,
id_area int,
cantidadXarea int not null,
foreign key(id_especie) references especie(id_especie),
foreign key(id_area) references areas(id_area)
);
create table visitante(
id_cedula int primary key,
nombre varchar(100) not null,
direccion varchar(100),
id_alojamiento int,
id_parque int,
foreign key(id_alojamiento) references alojamiento(id_alojamiento),
foreign key(id_parque) references parque(id_parque)
);
create table alojamiento(
id_alojamiento int primary key,
nombre_alojamiento varchar(100) not null,
categoria varchar(10)

);
select * from alojamiento;
show tables;
create table investigador(
id_investigador int primary key,
id_cedulaPersonal int,
foreign key(id_cedulaPersonal) references personal(id_cedula)
);
create table investigador_proyecto(
id_proyecto int,
id_investigador int,
primary key(id_proyecto,id_investigador),
foreign key(id_investigador) references investigador(id_investigador),
foreign key(id_proyecto) references proyecto(id_proyecto)
);
create table proyecto(
id_proyecto int primary key,
especie varchar(100) not null,
descripcion text,
presupuesto decimal not null,
fecha_inicio date not null,
fecha_finalizacion date not null
);

INSERT INTO tipo_persona (id_tipo, nombre_tipo) VALUES
(1, 'Administrativo'),
(2, 'Guarda Parque'),
(3, 'Biologo'),
(4, 'Guía Turístico'),
(5, 'Investigador');
INSERT INTO parque (id_parque, nombre_parque, direccion, dia_declaracion, id_areas)
VALUES
(1, 'Parque Nacional del Este', 'Calle Principal 123', '2024-04-27', 1),
(2, 'Reserva Ecológica de Montaña', 'Avenida Central 456', '2024-04-27', 2),
(3, 'Bosque Nacional de Robles', 'Camino del Bosque 789', '2024-04-27', 3),
(4, 'Parque Marino del Caribe', 'Costa Azul 234', '2024-04-27', 4),
(5, 'Parque Natural de la Costa', 'Avenida del Mar 567', '2024-04-27', 5);
INSERT INTO entidad (id_entidad, nombre_entidad) VALUES
(1, 'Ministerio de Ambiente'),

(2, 'Parques Nacionales'),
(3, 'Fundación para la Conservación'),
(4, 'Corporación de Parques'),
(5, 'Asociación Ambiental');
INSERT INTO areas (id_area, nombre_area, direccion, extencion_m2) VALUES
(1, 'Área de Bosque Tropical', 'Calle de los Árboles 1', 100.50),
(2, 'Área de Montañas Nevadas', 'Cumbres Blancas 2', 200.75),
(3, 'Área de Humedales', 'Pantanos del Este 3', 300.25),
(4, 'Área de Arrecifes de Coral', 'Playa Coralina 4', 400.75),
(5, 'Área de Playas y Dunas', 'Costa Dorada 5', 500.25);
INSERT INTO personal (id_cedula, nombre_personal, direccion, telFijo, telCelular, sueldo,
id_tipopersona, id_parque) VALUES
(1, 'Juan Pérez', 'Calle Principal 123', '123456789', '987654321', 1000.00, 1, 1),
(2, 'María Rodríguez', 'Avenida Central 456', '123456789', '987654321', 1200.00, 2, 2),
(3, 'Carlos Gómez', 'Camino del Bosque 789', '123456789', '987654321', 1100.00, 3, 3),
(4, 'Ana García', 'Costa Azul 234', '123456789', '987654321', 1300.00, 4, 4),
(5, 'Luis Martínez', 'Avenida del Mar 567', '123456789', '987654321', 1050.00, 5, 5);
INSERT INTO investigador (id_investigador, id_cedulaPersonal) VALUES
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1);
INSERT INTO visitante (id_cedula, nombre, direccion, id_alojamiento, id_parque) VALUES
(1, 'Visitante 1', 'Dirección 1', 1, 1),
(2, 'Visitante 2', 'Dirección 2', 2, 2),
(3, 'Visitante 3', 'Dirección 3', 3, 3),
(4, 'Visitante 4', 'Dirección 4', 4, 4),
(5, 'Visitante 5', 'Dirección 5', 5, 5);
INSERT INTO alojamiento (id_alojamiento, nombre_alojamiento, categoria) VALUES
(1, 'Cabaña del Bosque', 'Lujo'),
(2, 'Refugio de Montaña', 'Económico'),
(3, 'Hotel Marino', 'Estándar'),
(4, 'Casa de Playa', 'Lujo'),
(5, 'Hostal Ecológico', 'Económico');
INSERT INTO proyecto (id_proyecto, especie, descripcion, presupuesto, fecha_inicio,
fecha_finalizacion) VALUES
(1, 'Especie 1', 'Descripción del Proyecto 1', 10000.00, '2024-01-01', '2024-06-30'),

(2, 'Especie 2', 'Descripción del Proyecto 2', 15000.00, '2024-02-01', '2024-07-31'),
(3, 'Especie 3', 'Descripción del Proyecto 3', 20000.00, '2024-03-01', '2024-08-31'),
(4, 'Especie 4', 'Descripción del Proyecto 4', 25000.00, '2024-04-01', '2024-09-30'),
(5, 'Especie 5', 'Descripción del Proyecto 5', 30000.00, '2024-05-01', '2024-10-31');
INSERT INTO area_especie (id_especie, id_area, cantidadXarea) VALUES
(1, 1, 10),
(2, 2, 20),
(3, 3, 30),
(4, 4, 40),
(5, 5, 50);
INSERT INTO especie (id_especie, nombre_especie, deno_cientifica, deno_vulgar) VALUES
(1, 'Panthera leo', 'León', 'León Africano'),
(2, 'Elephas maximus', 'Elefante Asiático', 'Elefante Asiático'),
(3, 'Canis lupus', 'Lobo Gris', 'Lobo Gris'),
(4, 'Felis catus', 'Gato Doméstico', 'Gato Doméstico'),
(5, 'Ursus arctos', 'Oso Pardo', 'Oso Pardo');
INSERT INTO departamento (id_departamento, nombre_departamento, id_entidad) VALUES
(1, 'Departamento de Conservación Ambiental', 1),

(2, 'Departamento de Gestión de Áreas Protegidas', 2),
(3, 'Departamento de Educación Ambiental', 2),
(4, 'Departamento de Investigación y Monitoreo', 3), 
(5, 'Departamento de Desarrollo Sostenible', 4); 

select * from especie;

select v.nombre,a.nombre_alojamiento,categoria from visitante as v inner join alojamiento as a
on a.id_alojamiento = v.id_alojamiento;

entidad,departamento,tipo-persona,areas,parque,personal,alojamiento,visitante,especie,area_e
specie,investigador,proyecto,
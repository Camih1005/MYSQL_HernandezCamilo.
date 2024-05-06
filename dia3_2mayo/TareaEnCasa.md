Create database escuela;

Use escuela;

Create table persona(
Id int(10) primary key,
Nif varchar(9) unique not null,
Nombre varchar(100) not null,
Apellido1 varchar(100) not null,
Apellido2 varchar(100) not null,
Ciudad varchar(25) not null,
Dirección varchar(50) not null,
Teléfono varchar(9) not null unique,
Fecha_nacimiento Date,
Sexo  enum('H','M') not null,
Tipo enum('...') not null
);
Create table profesor(
Id_profesor int(10) primary key,
Id_departamento int not null,
foreign key(Id_departamento)references departamento(Id_departamento)
);


Create table departamento(
Id_departamento int primary key,
Nombre varchar(50) not null
);

Create table asignatura(
Id_asignatura int primary key,
Nombre varchar(100) not null,
Creditos float not null, 
Tipo enum('...') not null, 
Curso tinyint(3) not null,
Cuatrimestres tinyint(3) not null,
Id_profesor int(10) not null,
Id_grado int not null,
foreign key(Id_profesor)references profesor(Id_profesor),
foreign key(Id_grado)references grado(Id_grado)
);

Create table grado(
Id_grado int primary key, 
Nombre varchar(100) not null
);


Create table alumno_asignatura(
Id_alumno int not null,
Id_asignatura int not null, 
Id_curso int not null ,
foreign key(Id_asignatura)references asignatura(Id_asignatura),
foreign key(Id_curso)references curso(Id_curso),
foreign key(Id_alumno)references persona(Id),
primary key(Id_alumno,Id_asignatura,Id_curso)
);

Create table curso(
Id_curso int primary key, 
An_inicio year not null,
An_fin year not null 
);


INSERT INTO persona (Id, Nif, Nombre, Apellido1, Apellido2, Ciudad, Dirección, Teléfono, Fecha_nacimiento, Sexo, Tipo) 
VALUES
(1, '123456789', 'Andrés', 'Gómez', 'Sánchez', 'Bogotá', 'Carrera 10 #45-67', '312457890', '1990-05-15', 'H', 'Estudiante'),
(2, '987654321', 'María', 'Ramírez', 'Rodríguez', 'Medellín', 'Calle 70 #23-45', '310976543', '1992-08-20', 'M', 'Estudiante'),
(3, '456789123', 'Carlos', 'Martínez', 'García', 'Cali', 'Avenida 5 #12-34', '318765421', '1988-11-10', 'H', 'Estudiante'),
(4, '321654987', 'Ana', 'López', 'Hernández', 'Barranquilla', 'Calle 80 #34-56', '300654219', '1991-03-25', 'M', 'Profesor'),
(5, '654321987', 'David', 'Díaz', 'Muñoz', 'Cartagena', 'Carrera 30 #56-78', '304876543', '1975-07-30', 'H', 'Profesor');


INSERT INTO departamento (Id_departamento, Nombre) 
VALUES
(1, 'Departamento de Matemáticas'),
(2, 'Departamento de Lengua y Literatura'),
(3, 'Departamento de Ciencias Sociales'),
(4, 'Departamento de Ciencias Naturales'),
(5, 'Departamento de Arte y Música');


INSERT INTO profesor (Id_profesor, Id_departamento) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO grado (Id_grado, Nombre) 
VALUES
(1, 'Ingeniería en Sistemas'),
(2, 'Literatura y Escritura Creativa'),
(3, 'Ciencias Políticas'),
(4, 'Biología Marina'),
(5, 'Arte Dramático');


INSERT INTO asignatura (Id_asignatura, Nombre, Creditos, Tipo, Curso, Cuatrimestres, Id_profesor, Id_grado) 
VALUES
(1, 'Álgebra Lineal', 6.0, 'Obligatoria', 1, 2, 1, 1),
(2, 'Literatura Colombiana', 4.0, 'Obligatoria', 1, 2, 2, 2),
(3, 'Historia de Colombia', 5.0, 'Obligatoria', 1, 2, 3, 3),
(4, 'Ecología Costera', 6.0, 'Obligatoria', 1, 2, 4, 4),
(5, 'Actuación Teatral', 4.0, 'Optativa', 1, 2, 5, 5);



INSERT INTO curso (Id_curso, An_inicio, An_fin) 
VALUES
(1, 2024, 2025),
(2, 2024, 2025),
(3, 2024, 2025),
(4, 2024, 2025),
(5, 2024, 2025);



INSERT INTO alumno_asignatura (Id_alumno, Id_asignatura, Id_curso) 
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);



show tables;
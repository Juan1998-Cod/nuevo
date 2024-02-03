CREATE DATABASE PRUEBAS;
USE pruebas;
CREATE TABLE clientes (
idcliente int ,
primer varchar(50),
apellido varchar(50),
edad int,
pais varchar(50),
primary key(idcliente)
);

CREATE TABLE ordenes(
id_orden int not null,
producto varchar(50),
total int,
primary key(id_orden),
idcliente int,
foreign key (idcliente) references clientes(idcliente)
);

SELECT * FROM ordenes;
SELECT * FROM clientes;

INSERT INTO clientes VALUES (3,'MARCOS','PEREZ',14,'CHINA');
SELECT primer_nombre, apellido, pais FROM clientes where pais = 'COLOMBIA' AND apellido = 'DAVID';
SELECT primer_nombre, apellido from clientes;
SELECT primer_nombre as nombre_completo, apellido, pais FROM clientes 	WHERE NOT pais ='COLOMBIA'; 
SELECT * FROM clientes WHERE idcliente = 1;

SELECT  distinct c.idcliente, c.primer_nombre,c.edad,o.producto FROM clientes as c
INNER JOIN ordenes as o
on c.idcliente = o.idcliente
where edad >= 25;

SELECT SUM(edad) AS sumatoria_edad_clientes FROM clientes WHERE idcliente in(1,2);
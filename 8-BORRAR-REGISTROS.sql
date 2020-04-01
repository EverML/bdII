
--1- Cree la tabla con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), 
--domicilio (cadena de 30) y telefono (cadena de 11):

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

--2- Ingrese los siguientes registros (insert into):
-- Alvarez,Alberto,Colon 123,4234567,
-- Juarez,Juan,Avellaneda 135,4458787,
-- Lopez,Maria,Urquiza 333,4545454,
-- Lopez,Jose,Urquiza 333,4545454,
-- Salas,Susana,Gral. Paz 1234,4123456.
INSERT INTO agenda (apellido,nombre,domicilio,telefono)
values 
('Alvarez','Alberto','Colon 123','4234567'),
('Juarez','Juan','Avellaneda 135','4458787'),
('Lopez','Maria','Urquiza 333','4545454'),
(' Lopez','Jose','Urquiza 333','454545'),
('Salas','Susana','Gral. Paz 1234','4123456');

--3- Elimine el registro cuyo nombre sea "Juan" (1 registro afectado)
DELETE FROM agenda where nombre = 'Juan';

--4- Elimine los registros cuyo número telefónico sea igual a "4545454" (2 registros afectados)
DELETE FROM agenda where telefono = '4545454';

--5- Muestre la tabla.

select * from agenda;

--6- Elimine todos los registros (2 registros afectados)

DELETE FROM AGENDA;


--7- Muestre la tabla.

select * from agenda;
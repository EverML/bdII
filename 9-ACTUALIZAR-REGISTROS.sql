-- 0 
drop table if exists agenda;

--1- Cree la tabla:
 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

--2- Ingrese los siguientes registros:
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

--3- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro afectado)
UPDATE agenda SET nombre = 'Juan Jose' where nombre = 'Juan';

SELECT * FROM agenda;

--4- Actualice los registros cuyo número telefónico sea igual a "4545454" por "4445566" 
--(2 registros afectados)
UPDATE agenda SET telefono = '4445566' where telefono = '4545454';

SELECT * FROM agenda;

/*5- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose" (ningún 
     registro afectado porque ninguno cumple con la condición del "where")
*/
UPDATE agenda SET nombre = 'Juan Jose' where nombre = 'Juan';

SELECT * FROM agenda;

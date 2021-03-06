--0
drop table if exists medicamentos;

--1- Cree la tabla con la siguiente estructura:
 create table medicamentos(
  codigo serial,
  nombre varchar(20),
  laboratorio varchar(20),
  precio float,
  cantidad integer,
  primary key (codigo)
 );

-- 3- Ingrese los siguientes registros:
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

-- 3- Elimine todos los registros con "delete"
DELETE FROM medicamentos;

-- 4- Ingrese 2 registros:
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

-- 5- Vea los registros para verificar que continuó la secuencia al generar el valor para "codigo"
select * from medicamentos;

-- 6- Vacíe la tabla con truncate table
truncate table medicamentos;

-- 7- Ingrese el siguiente registro:
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);

-- 8- Vea los registros para verificar que al cargar el código reinició la secuencia en 1.
select * from medicamentos;
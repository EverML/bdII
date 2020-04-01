DROP TABLE if exists autos;

-- 1- Cree la tabla eligiendo el tipo de dato adecuado para cada campo, estableciendo el campo 
-- "patente" como clave primaria:
 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );

-- Hemos definido el campo "patente" de tipo "char" y no "varchar" porque la cadena de caracteres 
-- siempre tendrá la misma longitud (6 caracteres). Lo mismo sucede con el campo "modelo", en el cual 
-- almacenaremos el año, necesitamos 4 caracteres fijos.

-- 2- Ingrese los siguientes registros:
 insert into autos
  values('ACD123','Fiat 128','1970',15000);
 insert into autos
  values('ACG234','Renault 11','1990',40000);
 insert into autos
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos
  values('GCD123','Renault Clio','1990',70000);
 insert into autos
  values('BCC333','Renault Megane','1998',95000);
 insert into autos
  values('BVF543','Fiat 128','1975',20000);

-- 3- Seleccione todos los autos del año 1990:
SELECT * FROM autos where modelo = '1990';
-- 4- Borre la tabla.
DROP TABLE autos;

-- 5- Crearla nuevamente con la misma estructura pero utilizando las otras palabras claves para los tipos
-- de datos char y varchar.
 create table autos(
  patente varchar(6),
  marca varchar(20),
  modelo varchar(4),
  precio float,
  primary key (patente)
 );

-- 6- Ingrese un registro.
 insert into autos
  values('ENE61','Tesla Model 3','2019',33500);

-- 7- Mostrar el contenido de la tabla.
SELECT * FROM autos;
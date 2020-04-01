--0
drop table if exists medicamentos;

--1- Cree la tabla con la siguiente estructura:
 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

--2- Visualice la estructura de la tabla "medicamentos" indicando si el campo admite valores null.
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'medicamentos';

-- 3- Ingrese algunos registros con valores "null" para los campos que lo admitan:
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

--4- Vea todos los registros:
SELECT * FROM medicamentos;

--5- Ingrese un registro con valor "0" para el precio y cadena vacía para el laboratorio.
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(4,'Paracetamol Generico','',0,66);

--6- Ingrese un registro con valor "0" para el código y cantidad y cadena vacía para el nombre.
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Lasca',100,66);



--7- Muestre todos los registros.

select * from medicamentos;

--8- Intente ingresar un registro con valor nulo para un campo que no lo admite 
--(aparece un mensaje de error):
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,null,'Scavone',44,null);

--9- Recupere los registros que contengan valor "null" en el campo "laboratorio", luego los que 
--tengan una cadena vacía en el mismo campo. Note que el resultado es diferente.
select * from medicamentos where laboratorio is null;

select * from medicamentos where laboratorio = '';

--10- Recupere los registros que contengan valor "null" en el campo "precio", luego los que tengan el 
--valor 0 en el mismo campo. Note que el resultado es distinto.
select * from medicamentos where precio is null;

select * from medicamentos where precio = 0;



/*11- Recupere los registros cuyo laboratorio no contenga una cadena vacía, luego los que sean 
distintos de "null".
Note que la salida de la primera sentencia no muestra los registros con cadenas vacías y tampoco los 
que tienen valor nulo; el resultado de la segunda sentencia muestra los registros con valor para el 
campo laboratorio (incluso cadena vacía).
*/
select * from medicamentos where laboratorio <> '';

select * from medicamentos where laboratorio is not null;

/*12- Recupere los registros cuyo precio sea distinto de 0, luego los que sean distintos de "null".
Note que la salida de la primera sentencia no muestra los registros con valor 0 y tampoco los que 
tienen valor nulo; el resultado de la segunda sentencia muestra los registros con valor para el 
campo precio (incluso el valor 0).
*/
select * from medicamentos where precio <> 0;

select * from medicamentos where precio is not null;
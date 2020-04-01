-- 1- Créela con los siguientes campos, estableciendo como clave primaria el campo "codigo":
 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

-- 2- Ingrese los siguientes registros:
 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

-- 3- Ingrese un registro con código repetido (aparece un mensaje de error)
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Clean Code','Uncle Bob','Amazon?');

-- 4- Intente ingresar el valor "null" en el campo "codigo"
 insert into libros (codigo,titulo,autor,editorial)
  values (null,'YOU Dont Know JS','Some Guy','FreePDF?');

-- 5- Intente actualizar el código del libro "Martin Fierro" a "1" (mensaje de error)
UPDATE libros SET codigo = 1 where titulo = 'Martin Fierro';
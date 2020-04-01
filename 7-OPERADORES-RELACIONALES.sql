-- 1- Cree la tabla, con la siguiente estructura:
 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

-- 2- Ingrese algunos registros:
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

--3- Seleccione los datos de las impresoras (2 registros)
select * from articulos where nombre = 'impresora';

--4- Seleccione los artículos cuyo precio sea mayor o igual a 400 (3 registros)
select * from articulos where precio >=400;

--5- Seleccione el código y nombre de los artículos cuya cantidad sea menor a 30 (2 registros)
select codigo,nombre from articulos where cantidad < 30;

--6- Selecciones el nombre y descripción de los artículos que NO cuesten $100 (4 registros)
select nombre,descripcion from articulos where precio <> 100;
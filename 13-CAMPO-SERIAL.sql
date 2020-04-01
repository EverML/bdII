--0 
DROP TABLE IF EXISTS medicamentos;

-- 1- Cree la tabla con la siguiente estructura:
 create table medicamentos(
  codigo serial,
  nombre varchar(20),
  laboratorio varchar(20),
  precio float,
  cantidad integer,
  primary key (codigo)
);

-- 2- Visualice la estructura de la tabla "medicamentos"
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'medicamentos';


-- 3- Ingrese los siguientes registros (insert into):
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

-- 4- Verifique que el campo "código" generó los valores de modo automático.
select * from medicamentos;
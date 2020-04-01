/*
  1- Cree una tabla llamada "agenda". Debe tener los siguientes campos: apellido (cadena de 30), 
     nombre (cadena de 20), domicilio (cadena de 30) y telefono (cadena de 11)
*/
--PASO 1 Crear una tabla llamada agenda.
CREATE TABLE agenda(
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

-- PASO 2 Visualizar la estructura de la tabla agenda.
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'agenda';


/* PASO 3 Ingresasr los siguientes registros:

*/
 insert into agenda (apellido, nombre, domicilio, telefono) values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido, nombre, domicilio, telefono) values ('Torres','Juan','Avellaneda 135','4458787');


-- 4- Seleccione todos los registros de la tabla:
 select * from agenda;

 -- PASO 5 - Elimine la tabla.
DROP TABLE AGENDA;

-- PASO 6 -  Intente eliminar nuevamente la tabla. Debe aparecer un mensaje de error.
SELECT 'Error in query (7): ERROR: table "agenda" does not exist' as error
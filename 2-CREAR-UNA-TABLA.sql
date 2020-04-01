-- PASO 1. Intentar crear una tabla con nombre /agenda

CREATE TABLE /agenda(
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);


--PASO 2 Crear la tabla correcta esta vez.
CREATE TABLE agenda(
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);


--PASO 3  - Crearla nuevamente. revisar el error.
-- Error in query (7): ERROR: relation "agenda" already exists

-- PASO 4 - Visualice la estructura de la tabla "agenda".
-- |table_name |column_name	| udt_name |character_maximum_length|
-- | agenda	   | apellido	| varchar  |	30                  |
-- | agenda	   | nombre	    | varchar  |    20                  |
-- | agenda	   | domicilio	| varchar  |	30                  |
-- | agenda	   | telefono	| varchar  |	11                  |
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'agenda';

-- PASO 5 - Elimine la tabla.
DROP TABLE AGENDA;

-- PASO 6 -  Intente eliminar nuevamente la tabla. Debe aparecer un mensaje de error.
SELECT 'Error in query (7): ERROR: table "agenda" does not exist' as error


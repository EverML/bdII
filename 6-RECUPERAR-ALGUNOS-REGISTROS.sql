-- 1- Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), 
--    domicilio (cadena de 30) y telefono (cadena de 11).
CREATE TABLE agenda(
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

--2- Visualice la estructura de la tabla "agenda".
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'agenda';


--3- Ingrese los siguientes registros:
-- Acosta, Ana, Colon 123, 4234567;
-- Bustamante, Betina, Avellaneda 135, 4458787;
-- Lopez, Hector, Salta 545, 4887788; 
-- Lopez, Luis, Urquiza 333, 4545454;
-- Lopez, Marisa, Urquiza 333, 4545454.
INSERT INTO agenda(apellido,nombre,domicilio,telefono) 
values
('Acosta', 'Ana',' Colon 123', '4234567'),
('Bustamante', 'Betina','Avellaneda 135', '4458787'),
('Lopez', 'Hector', 'Salta 545', '4887788'),
('Lopez', 'Luis', 'Urquiza 333', '4545454'),
('Lopez', 'Marisa', 'Urquiza 333', '4545454');

-- 4- Seleccione todos los registros de la tabla
select * from agenda;

-- 5- Seleccione el registro cuyo nombre sea "Marisa" (1 registro)
select * 
  from agenda
where nombre = 'Marisa';   


-- 6- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)
select nombre,domicilio 
 from agenda
where apellido = 'Lopez'; 


-- 7- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)
select nombre 
  from agenda
 where telefono = '4545454';    

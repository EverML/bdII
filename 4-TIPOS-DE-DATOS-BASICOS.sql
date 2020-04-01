--1 
CREATE TABLE peliculas(
    nombre varchar(20),
    actor varchar(20),
    duracion integer,
    cantidad_de_copias integer
);

--2
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'peliculas';


--3
insert into peliculas (nombre, actor, duracion, cantidad_de_copias)  values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad_de_copias)  values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad_de_copias)  values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad_de_copias)  values ('Elsa y Fred','China Zorrilla',110,2);



--5 
SELECT * FROM peliculas
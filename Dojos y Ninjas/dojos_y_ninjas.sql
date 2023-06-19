/*consulta 1: crea 3 dojos nuevos*/
INSERT INTO dojos(nombre)
VALUES	('Chile'),
		('Mexico'),
        ('USA');
SELECT *
FROM dojos;
/*consulta 2: elimina los 3 dojos que acabas de crear*/
DELETE FROM dojos
WHERE id=1;

DELETE FROM dojos
WHERE id=2;

DELETE FROM dojos
WHERE id=3;
/*consulta 3: crea 3 dojos nuevos*/
INSERT INTO dojos(nombre)
VALUES	('Chile'),
		('Mexico'),
        ('USA');
SELECT *
FROM dojos;
/*consulta 4: crea 3 ninjas que pertenezcan al primer dojo*/
INSERT INTO ninjas(nombre, apellido, edad, id_dojo)
VALUES	('Juan','Perez',25, 4),
		('Pedro', 'Gonzalez', 30, 4),
        ('Claudia', 'Vivanco', 28, 4);
SELECT *
FROM ninjas;

/*consulta 5: crea 3 ninjas que pertenezcan al segundo dojo*/
INSERT INTO ninjas(nombre, apellido, edad, id_dojo)
VALUES	('Alberto','Ramirez',21, 5),
		('Patricia', 'Fernandez', 32, 5),
        ('Gabriela', 'Gutierrez', 26, 5);
SELECT *
FROM ninjas;

/*consulta 6: crea 3 ninjas que pertenezcan al tercer dojo*/
INSERT INTO ninjas(nombre, apellido, edad, id_dojo)
VALUES	('Emilio','Sanhueza',41, 6),
		('Erika', 'Espinoza', 36, 6),
        ('Humberto', 'Ureta', 29, 6);
SELECT *
FROM ninjas;

/*consulta 7: recupera todos los ninjas del primer dojo*/
SELECT*
FROM ninjas
WHERE id_dojo=4;

/*consulta 8: recupera todos los ninjas del último dojo*/
SELECT*
FROM ninjas
WHERE id_dojo=6;

/*consulta 9:  recupera el dojo del último ninja*/
SELECT dojos.nombre
FROM ninjas JOIN dojos
	ON ninjas.id_dojo=dojos.id
WHERE ninjas.id=9;
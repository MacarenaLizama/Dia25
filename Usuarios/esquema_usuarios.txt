USE esquema_usuarios;
/*consulta1*/
INSERT INTO usuarios(nombre, apellido, correo_electronico)
VALUES	('Juan', 'Romo', 'jr@correo.com'),
		('Maria', 'Perez', 'mp@correo.com'),
        ('Esteban', 'Ramirez', 'er@correo.com');
        
/*consulta 2*/        
SELECT*
FROM usuarios;

/*consulta 3*/
SELECT nombre, apellido
FROM usuarios
WHERE correo_electronico='jr@correo.com';

/*consulta 4*/
SELECT nombre, apellido
FROM usuarios
WHERE id=3;

/*consulta 5*/
UPDATE usuarios
SET apellido='Panqueques'
WHERE id=3;

/*consulta 6*/
DELETE FROM usuarios
WHERE id=2;

/*consulta 7*/
SELECT nombre
FROM usuarios;

/*consulta 8*/
SELECT nombre
FROM usuarios
ORDER BY nombre DESC;

SELECT nombre
FROM usuarios
ORDER BY nombre ASC;
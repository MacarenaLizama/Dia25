USE esquema_libros;

/*consulta1*/
INSERT INTO usuarios (nombre)
VALUES	('Jane Austin'),
		('Emily Dickinson'),
        ('Fyodor Dostoevsky'),
        ('William Shakespeare'),
        ('Lau Tzu');
        
/*consulta2*/
INSERT INTO libros (titulos, num_paginas)
VALUES		('C Sharp', 100),
			('Java', 200),
            ('Python', 150),
            ('PHP', 180),
            ('Ruby', 190);

/*consulta 3*/
UPDATE libros
SET titulos='C#'
WHERE id=1;

/*consulta 4*/
UPDATE usuarios
SET nombre='Bill Shakespeare'
WHERE id=4;

/*consulta 5-8*/
INSERT INTO favoritos( usuario_id, libro_id)
VALUES		(1,1),
			(1,2),
            (2,1),
            (2,2),
            (2,3),
            (3,1),
            (3,2),
            (3,3),
            (3,4),
            (4,1),
            (4,2),
            (4,3),
            (4,4),
            (4,5);

/*consulta 9*/
SELECT *
FROM libros
JOIN favoritos on libros.id= favoritos.libro_id
JOIN usuarios on usuarios.id= favoritos.usuario_id
WHERE libros.id=3;

/*consulta 10*/
DELETE FROM favoritos
WHERE libro_id=3 AND usuario_id=2;
        
/*consulta 11*/
INSERT INTO favoritos (usuario_id, libro_id)
VALUES (5,2);

/*consulta 12*/
SELECT *
FROM usuarios
JOIN favoritos ON usuarios.id = favoritos.usuario_id
JOIN libros ON libros.id = favoritos.libro_id
WHERE usuarios.id = 3;

/*consulta 13*/
SELECT * 
FROM libros
JOIN favoritos ON libros.id = favoritos.libro_id
JOIN usuarios ON usuarios.id = favoritos.usuario_id
WHERE libros.id = 5;


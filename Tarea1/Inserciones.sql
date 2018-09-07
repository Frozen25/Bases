INSERT INTO PlatilloXRestaurante VALUES (
   (SELECT id_Platillo FROM Platillo WHERE nombre = 'Chop Suey'),
   (SELECT id_Restaurante FROM Restaurante WHERE nombre = 'El Lago')
);

--CREACIÓN DE LOS HORARIOS
INSERT INTO Horario values (1 , 'Desayuno', 800 ,1000);
INSERT INTO Horario values (2 , 'Almuerzo', 1100,1400);
INSERT INTO Horario values (3 , 'Cafe',	 	1500,1600);
INSERT INTO Horario values (4 , 'Cena', 	1700,1930);

-- Insercion de las universidades
INSERT INTO Universidad(nombre) values ('ITCR');
INSERT INTO Universidad(nombre) values ('UCR');
INSERT INTO Universidad(nombre) values ('UNA');
INSERT INTO Universidad(nombre) values ('UNED');

-- Insercion de Sedes
INSERT INTO Sede(nombre, id_Universidad) values ('id_Sede Central Cartago', 1);
INSERT INTO Sede(nombre, id_Universidad) values ('id_Sede Regional San Carlos', 1);
INSERT INTO Sede(nombre, id_Universidad) values ('Centro Académico Alajuela', 1);
INSERT INTO Sede(nombre, id_Universidad) values ('Centro Académico Limón', 1);
INSERT INTO Sede(nombre, id_Universidad) values ('Centro Académico San José', 1);

-- Insercion de restaurantes
INSERT INTO Restaurante (id_Restaurante,id_Sede, nombre) values (1, 1, 'Comedor Institucional');
INSERT INTO Restaurante (id_Restaurante,id_Sede, nombre) values (2, 1, 'El Lago');
INSERT INTO Restaurante (id_Restaurante,id_Sede, nombre) values (3, 1, 'La Estación');
INSERT INTO Restaurante (id_Restaurante,id_Sede, nombre) values (4, 1, 'Casa Luna');
INSERT INTO Restaurante (id_Restaurante,id_Sede, nombre) values (5, 1, 'Forestal');

-- Insercion de Platillos
INSERT INTO Platillo(id_Platillo, nombre) values (1, 'Gallo Pinto');
INSERT INTO Platillo(nombre) values ('Fajitas de Cerdo');
INSERT INTO Platillo(nombre) values ('Garbanzos con Chorizo');
INSERT INTO Platillo(nombre) values ('Soufflé de Atún');
INSERT INTO Platillo(nombre) values ('Sopa Azteca');
INSERT INTO Platillo(nombre) values ('Rice and Beans');
INSERT INTO Platillo(nombre) values ('Pollo Caribeño');
INSERT INTO Platillo(nombre) values ('Papas con Carne');
INSERT INTO Platillo(nombre) values ('Proteína Mixta');
INSERT INTO Platillo(nombre) values ('Tamales');
INSERT INTO Platillo(nombre) values ('Queque de Chocolate');
INSERT INTO Platillo(nombre) values ('Cereal con Leche');
INSERT INTO Platillo(nombre) values ('Lentejas');
INSERT INTO Platillo(nombre) values ('Carne en Salsa');
INSERT INTO Platillo(nombre) values ('Tortillas de Queso');
INSERT INTO Platillo(nombre) values ('Budín');
INSERT INTO Platillo(nombre) values ('Pescado al Horno');
INSERT INTO Platillo(nombre) values ('Tilapia con Salsa Tártara');
INSERT INTO Platillo(nombre) values ('Fideos');
INSERT INTO Platillo(nombre) values ('Chop Suey');

--Desayunos
INSERT INTO PlatilloXHorario values (1,1);
INSERT INTO PlatilloXHorario values (12,1);
--Almuerzos
INSERT INTO PlatilloXHorario values (2,2);
INSERT INTO PlatilloXHorario values (3,2);
INSERT INTO PlatilloXHorario values (6,2);
INSERT INTO PlatilloXHorario values (7,2);
INSERT INTO PlatilloXHorario values (8,2);
INSERT INTO PlatilloXHorario values (4,2);
INSERT INTO PlatilloXHorario values (5,2);
INSERT INTO PlatilloXHorario values (14,2);
INSERT INTO PlatilloXHorario values (9,2);
-- Cafe
INSERT INTO PlatilloXHorario values (10,3);
INSERT INTO PlatilloXHorario values (11,3);
INSERT INTO PlatilloXHorario values (15,3);
INSERT INTO PlatilloXHorario values (16,3);
--Cenas
INSERT INTO PlatilloXHorario values (13,4);
INSERT INTO PlatilloXHorario values (17,4);
INSERT INTO PlatilloXHorario values (18,4);
INSERT INTO PlatilloXHorario values (19,4);
INSERT INTO PlatilloXHorario values (20,4);

--Insertar Pinto
INSERT INTO PlatilloXRestaurante values(1,1);
INSERT INTO PlatilloXRestaurante values(1,2);
INSERT INTO PlatilloXRestaurante values(1,3);
INSERT INTO PlatilloXRestaurante values(1,4);
INSERT INTO PlatilloXRestaurante values(1,5);

--Insertar Fajitas
INSERT INTO PlatilloXRestaurante values(2,1);
INSERT INTO PlatilloXRestaurante values(2,2);
INSERT INTO PlatilloXRestaurante values(2,3);
INSERT INTO PlatilloXRestaurante values(2,4);
INSERT INTO PlatilloXRestaurante values(2,5);

--Insertar Garbanzos
INSERT INTO PlatilloXRestaurante values(3,1);
INSERT INTO PlatilloXRestaurante values(3,2);
INSERT INTO PlatilloXRestaurante values(3,3);
INSERT INTO PlatilloXRestaurante values(3,4);
INSERT INTO PlatilloXRestaurante values(3,5);

--Insertar Souffle
INSERT INTO PlatilloXRestaurante values(4,1);
INSERT INTO PlatilloXRestaurante values(4,2);
INSERT INTO PlatilloXRestaurante values(4,3);
INSERT INTO PlatilloXRestaurante values(4,4);
INSERT INTO PlatilloXRestaurante values(4,5);

-- Insertar Sopa Azteca
INSERT INTO PlatilloXRestaurante values(5,1);
INSERT INTO PlatilloXRestaurante values(5,2);
INSERT INTO PlatilloXRestaurante values(5,3);
INSERT INTO PlatilloXRestaurante values(5,4);
INSERT INTO PlatilloXRestaurante values(5,5);

-- Insertar Rice and Beans
INSERT INTO PlatilloXRestaurante values(6,1);
INSERT INTO PlatilloXRestaurante values(6,2);
INSERT INTO PlatilloXRestaurante values(6,3);
INSERT INTO PlatilloXRestaurante values(6,4);
INSERT INTO PlatilloXRestaurante values(6,5);

-- Insertar Pollo Caribeño
INSERT INTO PlatilloXRestaurante values(7,3);
INSERT INTO PlatilloXRestaurante values(7,4);
INSERT INTO PlatilloXRestaurante values(7,5);

-- Insertar Papas con Carne
INSERT INTO PlatilloXRestaurante values(8,1);
INSERT INTO PlatilloXRestaurante values(8,2);
INSERT INTO PlatilloXRestaurante values(8,3);
INSERT INTO PlatilloXRestaurante values(8,4);
INSERT INTO PlatilloXRestaurante values(8,5);

-- Insertar Proteína Mixta
INSERT INTO PlatilloXRestaurante values(9,1);
INSERT INTO PlatilloXRestaurante values(9,2);
INSERT INTO PlatilloXRestaurante values(9,3);
INSERT INTO PlatilloXRestaurante values(9,4);
INSERT INTO PlatilloXRestaurante values(9,5);

-- Insertar Tamales
INSERT INTO PlatilloXRestaurante values(10,1);
INSERT INTO PlatilloXRestaurante values(10,2);
INSERT INTO PlatilloXRestaurante values(10,3);
INSERT INTO PlatilloXRestaurante values(10,4);
INSERT INTO PlatilloXRestaurante values(10,5);

-- Insertar Queque de Chocolate
INSERT INTO PlatilloXRestaurante values(11,1);
INSERT INTO PlatilloXRestaurante values(11,3);
INSERT INTO PlatilloXRestaurante values(11,2);
INSERT INTO PlatilloXRestaurante values(11,4);
INSERT INTO PlatilloXRestaurante values(11,5);

-- Insertar Cereal con Leche
INSERT INTO PlatilloXRestaurante values(12,1);
INSERT INTO PlatilloXRestaurante values(12,2);
INSERT INTO PlatilloXRestaurante values(12,3);
INSERT INTO PlatilloXRestaurante values(12,4);
INSERT INTO PlatilloXRestaurante values(12,5);

-- Insertar Lentejas
INSERT INTO PlatilloXRestaurante values(13,1);
INSERT INTO PlatilloXRestaurante values(13,2);
INSERT INTO PlatilloXRestaurante values(13,3);
INSERT INTO PlatilloXRestaurante values(13,4);
INSERT INTO PlatilloXRestaurante values(13,5);

-- Insertar Carne en Salsa
INSERT INTO PlatilloXRestaurante values(14,1);
INSERT INTO PlatilloXRestaurante values(14,2);
INSERT INTO PlatilloXRestaurante values(14,3);
INSERT INTO PlatilloXRestaurante values(14,4);
INSERT INTO PlatilloXRestaurante values(14,5);

-- Insertar Tortillas de Queso
INSERT INTO PlatilloXRestaurante values(15,1);
INSERT INTO PlatilloXRestaurante values(15,2);
INSERT INTO PlatilloXRestaurante values(15,3);
INSERT INTO PlatilloXRestaurante values(15,4);
INSERT INTO PlatilloXRestaurante values(15,5);

-- Insertar Budín 
INSERT INTO PlatilloXRestaurante values(16,1);
INSERT INTO PlatilloXRestaurante values(16,2);
INSERT INTO PlatilloXRestaurante values(16,3);
INSERT INTO PlatilloXRestaurante values(16,4);
INSERT INTO PlatilloXRestaurante values(16,5);

-- Insertar Pescado al Horno
INSERT INTO PlatilloXRestaurante values(17,1);
INSERT INTO PlatilloXRestaurante values(17,2);
INSERT INTO PlatilloXRestaurante values(17,3);
INSERT INTO PlatilloXRestaurante values(17,4);
INSERT INTO PlatilloXRestaurante values(17,5);

-- Insertar Tilapia con Salsa Tártara
INSERT INTO PlatilloXRestaurante values(18,1);
INSERT INTO PlatilloXRestaurante values(18,2);
INSERT INTO PlatilloXRestaurante values(18,3);
INSERT INTO PlatilloXRestaurante values(18,4);
INSERT INTO PlatilloXRestaurante values(18,5);

-- Insertar Fideos
INSERT INTO PlatilloXRestaurante values(19,5);
INSERT INTO PlatilloXRestaurante values(19,3);
INSERT INTO PlatilloXRestaurante values(19,4);
INSERT INTO PlatilloXRestaurante values(19,2);
INSERT INTO PlatilloXRestaurante values(19,1);

-- Insertar Chop Suey
INSERT INTO PlatilloXRestaurante values(20,2);
INSERT INTO PlatilloXRestaurante values(20,3);
INSERT INTO PlatilloXRestaurante values(20,5);
INSERT INTO PlatilloXRestaurante values(20,4);
INSERT INTO PlatilloXRestaurante values(20,1);

--Insertar Carreras
INSERT INTO Carrera (nombre , id_Sede) values('Computadores', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Computación', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Biotecnología', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Electrónica', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Mecatrónica', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Construcción', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Producción Industrial', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Mantenimiento Industrial', 1);
INSERT INTO Carrera (nombre , id_Sede) values('ATI', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Administración de Empresas', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Ambiental', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Forestal', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Agronegocios', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Ingenieria Física', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Diseño Industrial', 1);
INSERT INTO Carrera (nombre , id_Sede) values('Agrícola', 1);

--Insertar Usuarios
INSERT INTO Usuario values (2016085662, 'Alexis', 		'Gavriel Gómez', 1);
INSERT INTO Usuario values (2016009338, 'Emmanuelle', 	'Aguilar Sánchez', 1);
INSERT INTO Usuario values (2016174933, 'Andrés', 		'Quesada Martinez', 4);
INSERT INTO Usuario values (2015125235, 'Jose', 		'Campos Castro', 4);
INSERT INTO Usuario values (2016108960, 'Paulina', 		'Monge Hernandez', 4);
INSERT INTO Usuario values (2017108960, 'Valeria', 			'Jimenez Rojas', 9);
INSERT INTO Usuario values (2015103635, 'Marco', 			'Rivas Vargas', 15);
INSERT INTO Usuario values (2015106475, 'Javier', 			'Sánchez Sanabria', 16);
INSERT INTO Usuario values (2015103475, 'Sebastián', 		'Soto Madrigal', 14);
INSERT INTO Usuario values (2014232423, 'Anthony', 		'Navarro Piedra', 7);
INSERT INTO Usuario values (2013586351, 'Ronald', 		'Rodriguez Amador', 8);
INSERT INTO Usuario values (2011353646, 'Yuliana', 		'Castillo Vargas', 11);
INSERT INTO Usuario values (2010132534, 'Natalia', 		'Aguilar Zúñiga', 5);
INSERT INTO Usuario values (2009546422, 'Vanessa María', 'Avendaño López', 3);
INSERT INTO Usuario values (2012153245, 'Anny Alejandra', 'Esquivel Fernandez', 8);
INSERT INTO Usuario values (2015653452, 'Alejandro', 		'Garro Esquivel', 11);
INSERT INTO Usuario values (2012345655, 'Mariana', 		'Thomas Díaz', 12);
INSERT INTO Usuario values (2007454354, 'Mariano', 		'Martinez Quesada', 16);
INSERT INTO Usuario values (2002436435, 'Isaac', 		'Campos Cerdas', 2);
INSERT INTO Usuario values (2016354354, 'Jack', 		'Aguilar Vargas', 6);
INSERT INTO Usuario values (2018354354, 'José David', 		'Alvarez Caldrón', 7);
INSERT INTO Usuario values (2017435245, 'Kenneth', 		'Badilla Díaz', 8);
INSERT INTO Usuario values (2001000343, 'Aldo Esteban', 	'Araya Ureña', 9);
INSERT INTO Usuario values (2001435353, 'Roberto', 		'Jimenez Rivera', 10);
INSERT INTO Usuario values (2015864564, 'Emanuel', 		'López Porras', 11);
INSERT INTO Usuario values (2016236545, 'Bryan', 		'Ruiz Ortíz', 6);
INSERT INTO Usuario values (2008098887, 'David', 		'Sanabria Esquivel', 1);
INSERT INTO Usuario values (2016598988, 'Juan Pablo', 		'Barboza Martinez', 13);
INSERT INTO Usuario values (2017879568, 'Jafet', 		'Arriola Quesada', 3);
INSERT INTO Usuario values (2018987964, 'Jostein Alejandro', 		'Salazar Thomas', 4);
INSERT INTO Usuario values (2010354354, 'Alvaro', 		'Alvarado Alvarez', 1);
INSERT INTO Usuario values (2016359854, 'Jahanel', 		'Barboza Arriola', 1);

--Insertar Votaciones
-- comedor 1, lago 2, estacion3, casa4, forestal5
--INSERT INTO Votacion  (platillo, Usuario, Restaurante, Horario, fecha, puntuacion)
--							 P  - Usuario - R - H -    Fecha     - P
INSERT INTO Votacion values	(1,	2016359854,	1,	1, 	'2018-08-24' , 1 );
INSERT INTO Votacion values	(1,	2017108960,	1,	1, 	'2018-08-22' , 0 );
INSERT INTO Votacion values	(2,	2010354354,	2,	2, 	'2018-05-30' , 1 );
INSERT INTO Votacion values	(2,	2017435245,	2,	2, 	'2018-08-15' , 1 );
INSERT INTO Votacion values	(15,2016009338,	4,	3, 	'2018-04-15' , 1 );
INSERT INTO Votacion values	(4,	2017435245,	4,	1, 	'2018-05-10' , 1 );
INSERT INTO Votacion values	(3,	2015125235,	3,	2, 	'2018-07-15' , 0 );
INSERT INTO Votacion values	(5,	2018354354,	5,	2, 	'2018-09-10' , 1 );
INSERT INTO Votacion values	(5,	2017108960,	1,	2, 	'2018-01-10' , 0 );
INSERT INTO Votacion values	(20,2016598988,	5,	1, 	'2018-02-15' , 0 );
INSERT INTO Votacion values	(4,	2016354354,	5,	2, 	'2018-07-10' , 1 );
INSERT INTO Votacion values	(1,	2016085662,	2,	1, 	'2018-08-15' , 1 );
INSERT INTO Votacion values	(4,	2002436435,	2,	2, 	'2018-08-30' , 0 );
INSERT INTO Votacion values	(6,	2018987964,	3,	2, 	'2018-08-01' , 1 );
INSERT INTO Votacion values	(2,	2007454354,	1,	2, 	'2014-08-11' , 1 );
INSERT INTO Votacion values	(11,2012153245,	3,	3, 	'2013-07-15' , 1 );
INSERT INTO Votacion values	(12,2017879568,	3,	1, 	'2012-06-10' , 0 );
INSERT INTO Votacion values	(10,2017108960,	5,	3, 	'2016-05-15' , 0 );
INSERT INTO Votacion values	(9,	2015125235,	3,	1, 	'2018-04-10' , 1 );
INSERT INTO Votacion values	(19,2001000343,	4,	2, 	'2018-03-10' , 1 );
INSERT INTO Votacion values	(20,2016085662,	4,	1, 	'2017-08-25' , 1 );
INSERT INTO Votacion values	(7,	2012345655,	3,	2, 	'2017-02-15' , 0 );
INSERT INTO Votacion values	(6,	2017108960,	5,	2, 	'2017-01-25' , 1 );
INSERT INTO Votacion values	(8,	2016085662,	3,	2, 	'2017-09-15' , 0 );
INSERT INTO Votacion values	(7,	2016009338,	4,	1, 	'2017-10-15' , 0 );
INSERT INTO Votacion values	(9,	2015653452,	5,	1, 	'2017-11-10' , 0 );
INSERT INTO Votacion values	(14,2017108960,	1,	2, 	'2017-12-15' , 1 );
INSERT INTO Votacion values	(15,2015103635,	1,	1, 	'2017-12-10' , 1 );
INSERT INTO Votacion values	(13,2016085662,	5,	4, 	'2016-03-25' , 1 );
INSERT INTO Votacion values	(1,	2015103635,	3,	1, 	'2016-04-15' , 0 );
INSERT INTO Votacion values	(2,	2016085662,	1,	2, 	'2016-05-25' , 1 );
INSERT INTO Votacion values	(2,	2015106475,	2,	2, 	'2016-11-15' , 1 );
INSERT INTO Votacion values	(1,	2016009338,	1,	1, 	'2016-10-15' , 1 );
INSERT INTO Votacion values	(18,2015106475,	4,	4, 	'2016-11-10' , 0 );
INSERT INTO Votacion values	(1,	2015125235,	1,	1, 	'2016-12-15' , 1 );
INSERT INTO Votacion values	(1,	2015125235,	5,	1, 	'2016-07-10' , 1 );
INSERT INTO Votacion values	(17,2001435353,	2,	4, 	'2018-06-25' , 1 );
INSERT INTO Votacion values	(16,2016085662,	2,	1, 	'2018-03-15' , 0 );
INSERT INTO Votacion values	(2,	2016085662,	2,	2, 	'2018-01-25' , 1 );
INSERT INTO Votacion values	(2,	2015864564,	2,	2, 	'2017-08-05' , 0 );
INSERT INTO Votacion values	(1,	2016009338,	3,	1, 	'2017-06-25' , 1 );
INSERT INTO Votacion values	(11,2016236545,	3,	3, 	'2017-08-06' , 1 );
INSERT INTO Votacion values	(19,2015125235,	3,	4, 	'2016-08-27' , 1 );
INSERT INTO Votacion values	(1,	2009546422,	3,	1, 	'2011-08-29' , 0 );
INSERT INTO Votacion values	(3,	2017108960,	3,	2, 	'2012-08-28' , 0 );
INSERT INTO Votacion values	(20,2015103475,	1,	4, 	'2017-09-02' , 1 );
INSERT INTO Votacion values	(1,	2016085662,	2,	1, 	'2015-09-02' , 0 );
INSERT INTO Votacion values	(2,	2011353646,	2,	2, 	'2016-09-02' , 1 );
INSERT INTO Votacion values	(2,	2015103475,	2,	2, 	'2017-09-02' , 0 );
INSERT INTO Votacion values	(11,2014232423,	3,	1, 	'2018-01-30' , 1 );
INSERT INTO Votacion values	(1,	2016009338,	3,	1, 	'2018-02-30' , 1 );
INSERT INTO Votacion values	(11,2015125235,	3,	1, 	'2018-03-30' , 1 );
INSERT INTO Votacion values	(1,	2015125235,	3,	1, 	'2018-05-30' , 1 );
INSERT INTO Votacion values	(3,	2014232423,	3,	2, 	'2018-08-30' , 1 );
INSERT INTO Votacion values	(5,	2010132534,	3,	2, 	'2018-09-04' , 1 );
INSERT INTO Votacion values	(5,	2008098887,	3,	2, 	'2016-09-03' , 1 );
INSERT INTO Votacion values	(5,	2015125235,	3,	1, 	'2017-09-02' , 1 );
INSERT INTO Votacion values	(5,	2013586351,	3,	2, 	'2018-09-06' , 1 );
-- Configura las opciones de SQLite, activa las foreign keys, los headers y el modo columna

PRAGMA FOREIGN_KEYS = ON;
.mode column
.headers on

-- Crea la tabla Universidad, guarda todas las universidades asociadas
CREATE TABLE Universidad(
	id_Universidad 	integer PRIMARY KEY,
 	nombre 			text 	NOT NULL
);

-- Crea la tabla Sede, guarda todas las sedes por universidad
CREATE TABLE Sede(
	id_Sede 		integer PRIMARY KEY, 
	nombre 			text 	NOT NULL,
	id_Universidad 	integer NOT NULL,
	FOREIGN KEY (id_Universidad) REFERENCES Universidad(id_Universidad) ON UPDATE CASCADE ON DELETE CASCADE 
);


-- Crea la tabla Horario por cada Restaurante
CREATE TABLE Horario(
	id_Horario 	integer PRIMARY KEY,
	tipo 		text 	NOT NULL,
	hora_inicio integer NOT NULL,
	hora_fin 	integer NOT NULL
);

-- Crea la tabla Restaurante para cada sede
CREATE TABLE Restaurante(
	id_Restaurante 	 integer PRIMARY KEY,
	id_Sede 		 integer NOT NULL, 
	nombre 			 text 	 NOT NULL,
	horario_desayuno integer NOT NULL DEFAULT 1,
	horario_almuerzo integer NOT NULL DEFAULT 2,
	horario_cafe 	 integer NOT NULL DEFAULT 3,
	horario_cena 	 integer NOT NULL DEFAULT 4,
	FOREIGN KEY (id_Sede) 				REFERENCES Sede(id_Sede) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (horario_desayuno) 	REFERENCES Horario(id_Horario) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (horario_almuerzo) 	REFERENCES Horario(id_Horario) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (horario_cafe) 		REFERENCES Horario(id_Horario) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (horario_cena) 		REFERENCES Horario(id_Horario) ON UPDATE CASCADE ON DELETE CASCADE  
);

-- Crea la tabla Platillos, son los que va a vender cada restaurante
CREATE TABLE Platillo( 
	id_Platillo integer PRIMARY KEY, 
	nombre 		text 	NOT NULL );

-- Crea la tabla PlatilloXHorario, relaciona la tabla de Platillos con la de Horario para saber cuales platillos están en un determinado 
-- horario
CREATE TABLE PlatilloXHorario( 
	id_Platillo integer, 
	id_Horario integer,
	FOREIGN KEY (id_Platillo) 	REFERENCES Platillo(id_Platillo) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (id_Horario) 	REFERENCES Horario(id_Horario) ON UPDATE CASCADE ON DELETE CASCADE 
);

-- Crea la tabla PlatilloXRestaurante, relaciones la tabla de Platillos con la de Restaurante, para saber los platillo por cada restaurante
CREATE TABLE PlatilloXRestaurante( 
	id_Platillo integer, 
	id_Restaurante integer,
	FOREIGN KEY (id_Platillo) 		REFERENCES Platillo(id_Platillo) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (id_Restaurante) 	REFERENCES Restaurante(id_Restaurante) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Crea la tabla Carreras, tiene guardadas las carreras que están registradas en la universidad, sede y restaurante
CREATE TABLE Carrera ( 
	id_Carrera 	integer PRIMARY KEY, 
	nombre 		text 	NOT NULL );

-- Crea la tabla Usuario, guarda los usuario que utilizan el servicio de restaurante
CREATE TABLE Usuario ( 
	id_Usuario 	integer PRIMARY KEY,
	nombre 		text 	NOT NULL, 
	apellidos 	text 	NOT NULL, 
	id_Carrera 	integer NOT NULL,
	FOREIGN KEY (id_Carrera) 	REFERENCES Carrera(id_Carrera) ON UPDATE CASCADE ON DELETE CASCADE 
);

-- Crea la tabla Votacion relaciona el platillo votado, el usuario que votó, el restaurante y el horario donde lo hizo
CREATE TABLE Votacion( 
	id_Platillo integer 			NOT NULL, 
	id_Usuario integer 				NOT NULL, 
	id_Restaurante integer 			NOT NULL,
	id_Horario integer 				NOT NULL,
	fecha DATE	 					NOT NULL,
	puntuacion integer 				DEFAULT 0,
	FOREIGN KEY (id_Platillo) 		REFERENCES Platillo(id_Platillo) ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (id_Usuario) 		REFERENCES Usuario(id_Usuario)	 ON UPDATE CASCADE ON DELETE CASCADE ,
	FOREIGN KEY (id_Restaurante) 	REFERENCES Restaurante(id_Restaurante) ON UPDATE CASCADE ON DELETE CASCADE,	
	FOREIGN KEY (id_Horario) 		REFERENCES Horario(id_Horario)	ON UPDATE CASCADE ON DELETE CASCADE 
);

-- UPDATE
UPDATE Restaurante SET nombre = 'Comedor Institucional' WHERE id_Restaurante = 1;

-- DELETE
DELETE FROM Horario WHERE id_Horario = 4;

-- Estudiante más participativo
SELECT nombreEstudiante, MAX(puntuacion)
FROM(
   SELECT u.nombre AS nombreEstudiante, COUNT(v.puntuacion) AS puntuacion
   FROM Votacion v
   INNER JOIN Usuario u ON u.id_Usuario = v.id_Usuario
   GROUP BY u.nombre
);

-- Promedio por restaurante
SELECT r.nombre, AVG(v.puntuacion)
FROM Votacion v
INNER JOIN Restaurante r ON r.id_Restaurante = v.id_Restaurante
GROUP BY r.nombre;

-- Horario más frecuentado
SELECT horario, MAX(votos)
FROM(
   SELECT h.tipo AS horario, COUNT(v.puntuacion) AS votos
   FROM Votacion v
   INNER JOIN Horario h ON h.id_Horario = v.id_Horario
   GROUP BY h.tipo
);

-- Platillo más gustado por restaurante ?
SELECT restaurante, platillo, MAX(promedios)
FROM(
   SELECT r.nombre AS restaurante, p.nombre AS platillo, AVG(v.puntuacion) AS promedios
   FROM Votacion v
   INNER JOIN Platillo p ON v.id_Platillo = p.id_Platillo
   INNER JOIN Restaurante r ON v.id_Restaurante = r.id_Restaurante
   GROUP BY r.nombre, p.nombre)
GROUP BY restaurante
ORDER BY promedios;

-- Platillo menos gustado por restaurante ?
SELECT restaurante, platillo, MIN(promedios)
FROM(
   SELECT r.nombre AS restaurante, p.nombre AS platillo, AVG(v.puntuacion) AS promedios
   FROM Votacion v
   INNER JOIN Platillo p ON v.id_Platillo = p.id_Platillo
   INNER JOIN Restaurante r ON v.id_Restaurante = r.id_Restaurante
   GROUP BY r.nombre, p.nombre)
GROUP BY restaurante
ORDER BY promedios;

-- Carrera más frecuenta cada restaurante
SELECT carrera, restaurante, MAX(votos)
FROM(
   SELECT c.nombre AS carrera, r.nombre AS restaurante, COUNT(v.puntuacion) AS votos
   FROM Votacion v
   INNER JOIN Restaurante r ON v.id_Restaurante = r.id_Restaurante
   INNER JOIN Usuario u ON v.id_Usuario = u.id_Usuario
   INNER JOIN Carrera c ON u.id_Carrera = c.id_Carrera
   GROUP BY c.nombre, r.nombre)
GROUP BY restaurante
ORDER BY votos;

-- Platillo más gustado por restaurante por fechas
SELECT restaurante, platillo, fecha, MAX(promedios)
FROM(
   SELECT r.nombre AS restaurante, p.nombre AS platillo, v.fecha AS fecha, AVG(v.puntuacion) AS promedios
   FROM Votacion v
   INNER JOIN Platillo p ON v.id_Platillo = p.id_Platillo
   INNER JOIN Restaurante r ON v.id_Restaurante = r.id_Restaurante
   WHERE v.fecha > DATE('now', '-1 month', 'localtime') AND NOT r.nombre = 'La Estacion'
   GROUP BY p.nombre, v.fecha, r.nombre)
GROUP BY restaurante
ORDER BY promedios;

-- Platillo menos gustado por restaurante por fechas
SELECT restaurante, platillo, fecha, MIN(promedios)
FROM(
   SELECT r.nombre AS restaurante, p.nombre AS platillo, v.fecha AS fecha, AVG(v.puntuacion) AS promedios
   FROM Votacion v
   INNER JOIN Platillo p ON v.id_Platillo = p.id_Platillo
   INNER JOIN Restaurante r ON v.id_Restaurante = r.id_Restaurante
   WHERE v.fecha > DATE('now', '-1 month', 'localtime') AND (r.nombre = 'La Estacion' OR r.nombre = 'El Lago')
   GROUP BY p.nombre, v.fecha, r.nombre)
GROUP BY restaurante
ORDER BY promedios;

-- DISTINCT
SELECT DISTINCT nombre, apellidos FROM Usuario;

-- IS NOT NULL
SELECT nombre, apellidos FROM Usuario WHERE nombre IS NOT NULL;

-- IS NULL
SELECT nombre, apellidos FROM Usuario WHERE nombre IS NULL;

-- SUM
SELECT r.nombre, SUM(v.puntuacion)
FROM Votacion v
INNER JOIN Restaurante r ON v.id_Restaurante = r.id_Restaurante
GROUP BY r.nombre;



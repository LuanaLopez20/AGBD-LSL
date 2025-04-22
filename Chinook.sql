/*EJERCICIO 1*/

SELECT e.LastName, e.FirstName FROM employees e
ORDER BY LastName ASC;


/*EJERCICIO 2*/

SELECT t.Name AS tracksName, t.Milliseconds
FROM Tracks t
INNER JOIN Albums a ON t.AlbumId = a.AlbumId
WHERE a.Title = 'Big Ones'
ORDER BY t.Milliseconds DESC;

/*EJERCICIO 3*/

SELECT count(TrackId),g.name FROM genres g
INNER JOIN tracks t ON g.GenreId = t.GenreId
GROUP BY g.GenreId

/*EJERCICIO 4*/

SELECT a.title,COUNT(a.AlbumId) AS cant_album FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId 
HAVING cant_album > 5

/*EJERCICIO 5*/

SELECT a.Title, SUM (t.UnitPrice) AS PrecioTotal FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.Title
ORDER BY PrecioTotal ASC
LIMIT 10;

/*EJERCICIO 6*/

SELECT t.name AS tema, g.name AS genero, a.Title AS disco FROM tracks t
INNER JOIN genres g ON t.GenreId = g.GenreId
INNER JOIN albums a ON t.AlbumId = a.AlbumId
WHERE t.UnitPrice = 0.99;

/*EJERCICIO 7*/

SELECT t.name AS tema, t.Milliseconds AS Duracion, a.Title AS disco, ar.name AS Artista FROM tracks t
INNER JOIN albums a ON t.AlbumId = a.AlbumId
INNER JOIN artists ar ON a.ArtistId = ar.ArtistId
ORDER BY t.Milliseconds ASC
LIMIT 20;

/*EJERCICIO 8*/

SELECT e.LastName AS ApellidoEmpleado, e.Title AS puesto, m.LastName AS ApellidoJefe, COUNT (c.CustomerId) AS CantidadClientes
FROM employees e
INNER JOIN employees m ON e.ReportsTo = m.ReportsTo
INNER JOIN customers c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.LastName, e.Title, m.LastName
ORDER BY CantidadClientes DESC;

/*EJERCICIO 9*/

INSERT INTO tracks (name, MediaTypeId, Composer, Milliseconds, UnitPrice)
VALUES ("Soy", 1, "Lali Esposito", 210000, 0.99);

INSERT INTO tracks (name, MediaTypeId, Composer, Milliseconds, UnitPrice)
VALUES ("Ego", 1, "Lali Esposito", 200000, 0.99);

INSERT INTO tracks (name, MediaTypeId, Composer, Milliseconds, UnitPrice)
VALUES ("Boomerang", 1, "Lali Esposito", 200000, 0.99);

INSERT INTO tracks (name, MediaTypeId, Composer, Milliseconds, UnitPrice)
VALUES ("Una Na", 1, "Lali Esposito", 230000, 0.99);

/*EJERCICIO 10*/

SELECT t.name AS Cancion, t.Composer AS Compositor, t.UnitPrice AS Precio
FROM tracks t
WHERE t.Composer = "Lali Esposito"

/*EJERCICIO 11*/

UPDATE tracks
SET name = "flow violento", Composer = "Arcangel"
WHERE TrackId = 3504

UPDATE tracks
SET name = "pa que me invitan", Composer = "Arcangel"
WHERE TrackId = 3505

/*EJERCICIO 12*/

SELECT t.name AS Cancion, t.Composer AS Compositor, t.UnitPrice AS Precio
FROM tracks t
WHERE t.Composer = "Arcangel"

/*EJERCICIO 13*/

DELETE FROM tracks
WHERE Composer = "Arcangel"
-- 1. Listar todos los campos de la tabla Empleado.
SELECT * FROM "Employee"


-- 2. Listar los nombres, apellidos y el estado de los Empleados tal que vivan en la ciudad de Calgary.
SELECT e.FirstName, e.LastName, e.State
FROM "Employee" e
WHERE e.City = 'Calgary'


-- 3. Listar los nombres, la duraccion y Bytes de los tracks cuya duracion sea mayor a 500 segundos.
SELECT tr.Name, tr.Milliseconds, tr.Bytes
from "Track" tr
where tr.Milliseconds > (500 * 1000)

--Equivalente
--select tr."Name", tr."Milliseconds", tr."Bytes" FROM "Track" tr
--Where tr."Milliseconds" > '500000'


-- 4. Listar todos los campos de la tabla Invoice, tales que el paıs de facturacion sea Alemania, Francia o Italia
--    ordenados en forma ascendente por el nombre de la ciudad de facturacion.
SELECT * FROM "Invoice" i
WHERE i."BillingCountry" IN ('Germany', 'France', 'Italy')
ORDER BY i."BillingCity"  ASC


-- 5. Listar todos los datos de la tabla Invoice, tales que la ciudad de facturacion comience con la letra B,
--    ordenar por total descendente.
SELECT * FROM "Invoice" i
WHERE i."BillingCity" LIKE 'B%'
ORDER BY i."Total" DESC


-- 6. Seleccionar el nombre, albumId y el compositor de los tracks y ademas el genero del mismo.
--    HINT: La informacion esta repartida entre la tabla ”Track” y la tabla "Genre"
SELECT tr."Name" as Track, tr."AlbumId", tr."Composer", ge."Name" as Genero
FROM "Track" tr 
INNER JOIN "Genre" ge ON tr."GenreId" = ge."GenreId"


-- 7. A la consulta anterior, agregar el MediaType del track.
SELECT tr."Name" as Track, tr."AlbumId", tr."Composer", ge."Name" as Genero , mt."Name" as Media
FROM "Track" tr
INNER JOIN "Genre" ge ON tr."GenreId" = ge."GenreId"
INNER JOIN "MediaType" mt ON tr."MediaTypeId" = mt."MediaTypeId"


-- 8. Listar la cantidad de tracks que tiene cada genero y el nombre del genero.
SELECT ge."Name" as "Genero", COUNT(tr."TrackId") as "Cantidad de Tracks"
FROM "Track" tr
INNER JOIN "Genre" ge ON tr."GenreId" = ge."GenreId"
GROUP BY ge."Name"


-- 9. Ordenar el resultado de la consulta anterior, de manera descendente por cantidad de tracks.
SELECT ge."Name" as "Genero", COUNT(tr."TrackId") as "Cantidad de Tracks"
FROM "Track" tr
INNER JOIN "Genre" ge ON tr."GenreId" = ge."GenreId"
GROUP BY ge."Name"
ORDER BY "Cantidad de Tracks" DESC


-- 10. Obtener los artistas que no tienen albumes.
SELECT ar."Name" as "Artista"
FROM "Artist" ar
LEFT JOIN "Album" al ON ar."ArtistId" = al."ArtistId"
WHERE al."AlbumId" IS NULL

SELECT ar.*
FROM "Artist" ar
WHERE ar."ArtistId" NOT IN (
    SELECT DISTINCT al."ArtistId" FROM "Album" al
    )


-- 11. Listar todos los nombres de los artistas que comienza con la letra
--     ’M’ y la cantidad de tracks, de esos artistas, con mas de 25 tracks,
--     ordenado por cantidad de tracks de forma descendente.
SELECT ar."Name", COUNT(*) as "Cantidad de Tracks"
FROM "Artist" ar
    INNER JOIN "Album" al ON ar."ArtistId" = al."ArtistId"
    INNER JOIN "Track" tr ON al."AlbumId" = tr."AlbumId"
WHERE ar."Name" LIKE 'M%'
GROUP BY ar."ArtistId", ar."Name"
HAVING COUNT(*) > 25
ORDER BY "Cantidad de Tracks" DESC

select Ar."Name", count(*) as track_count
from "Artist" Ar
inner join "Album" Al on Ar."ArtistId" = Al."ArtistId"
inner join "Track" T on Al."AlbumId" = T."AlbumId"
where Ar."Name" like 'M%'
group by Ar."ArtistId", Ar."Name"
having count(*) > 25
order by count(*) desc


-- 12. Listar todos los artistas, y para el caso en que corresponda los
--     albumes asociados que tengan.
SELECT Ar."Name" "Nombre Artista", Al."Title" "Titulo Album"
FROM "Artist" Ar 
LEFT OUTER JOIN "Album" Al on Ar."ArtistId" = Al."ArtistId"


-- 13. Listar todos los albumes, y para el caso en que corresponda los
--     artistas asociados que tengan.
SELECT al.Title TituloAlbum, ar.Name NombreArtista
FROM Album al
LEFT OUTER JOIN Artist ar on  al.ArtistId = ar.ArtistId

SELECT al.Title TituloAlbum, ar.Name NombreArtista
FROM Artist ar
right outer join Album al on al.ArtistId = ar.ArtistId


-- 14. Obtener los datos de todos los tracks del album ’Led Zeppelin I’.
--     Hint: Utilizar consultas anidadas.
SELECT * 
FROM Track tr
WHERE tr.AlbumId = (
    SELECT al.AlbumId --este es el id del album que tiene de titulo lez zeppelin i
    FROM Album al 
    WHERE al.Title = 'Led Zeppelin I'
    )


-- 15. Obtener los nombres de los tracks que se llaman igual que el album al que pertenecen.
--     Hint: Utilizar consultas anidadas.
SELECT DISTINCT tr.Name
FROM Track tr
WHERE tr.AlbumId IN (
    SELECT al.AlbumId
    FROM Album al
WHERE al.Title = tr.Name
)


-- 16. CTE: Obtener las playlists mas caras.
--     Hint: primero obtener el ‘precio’ de cada playlist
WITH Precios as(
    SELECT pt.PlaylistId, sum(UnitPrice) as Precio
        FROM PlaylistTrack pt
        JOIN Track tr on pt.TrackId = tr.TrackId
    GROUP BY pt.PlaylistId
)

SELECT pl.*, pr.Precio
    FROM Precios pr
    JOIN Playlist pl on pr.PlaylistId = pl.PlaylistId
WHERE pr.Precio = (
    SELECT MAX(p.Precio) 
    FROM Precios p
    )

-- 17. CTE: ¿Cual es el promedio de albumes por PlayList?
--         Hint: Se debe devolver un valor numerico.
WITH cant_x_playlist as(
    SELECT p.PlaylistId, COUNT(DISTINCT t.AlbumId) cant
        FROM PlaylistTrack p
        INNER JOIN Track t ON p.TrackId = t.TrackId
        GROUP BY p.PlaylistId
    )
SELECT SUM(cxp.cant) / COUNT(cxp.PlaylistId)
FROM cant_x_playlist cxp


-- 18. Obtener los playlist que no contengan ningun track de los albumes
--      de los artistas “AC/DC” o “Audioslave” o ”Chris Cornell
SELECT pl.*
FROM Playlist pl
WHERE pl.PlaylistId NOT IN (
    SELECT DISTINCT pt.PlaylistId
    FROM PlaylistTrack pt
    JOIN Track tr ON pt.TrackId = tr.TrackId
    JOIN Album al ON tr.AlbumId = al.AlbumId
    JOIN Artist ar ON al.ArtistId = ar.ArtistId
    WHERE ar.Name IN ('AC/DC', 'Audioslave', 'Chris Cornell')
    )
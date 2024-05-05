/*  
Evaluacion Laboratorio SQL - 1C 2024 - 03/05/2024
    Joaquin Machulsky, LU: 521/21
*/

-- (1)
SELECT invoiceId
FROM invoiceLine
GROUP BY invoiceId
HAVING COUNT(invoiceId) > 5
ORDER BY invoiceId DESC;


-- (2)

-- Cantidad de invoices en los que aparece cada album
WITH AlbumesVendidos AS (
    SELECT albumId, COUNT(DISTINCT invoiceId) AS cantidad
    FROM Track tr
    JOIN invoiceLine il ON tr.trackId = il.trackId
    GROUP BY albumId
)
-- Albumes mas vendidos
SELECT al.albumId, al.title
FROM Album al
JOIN AlbumesVendidos vendidos on al.albumId = vendidos.albumId
where vendidos.cantidad = (SELECT MAX(cantidad) FROM AlbumesVendidos);


-- (3)
WITH TraksEnUnaSolaPlaylist as (
    SELECT tr.TrackId
    FROM Track tr
        join PlaylistTrack pt on pt.TrackId = tr.TrackId
        group by tr.TrackId
        having count(PlaylistId) = 1
    )

select al.Title
from Album al
join Track tr on al.AlbumId = tr.AlbumId
where tr.TrackId in (select TrackId from TraksEnUnaSolaPlaylist);


-- (4)

WITH TamanioAlbum AS (
    SELECT al.AlbumId, sum(tr.Bytes/1000) AS Tamanio-- divido por mil porque son numeros muy grandes
    FROM Album al
    JOIN Track tr ON al.AlbumId = tr.AlbumId
    GROUP BY al.AlbumId
)

SELECT al.AlbumId, al.Title
FROM Album al
JOIN TamanioAlbum ta ON al.AlbumId = ta.AlbumId
WHERE ta.Tamanio < 1500000/1000;


-- (5)
WITH PlaylistsRock AS (
    SELECT pl.PlaylistId
    FROM Playlist pl
    JOIN PlaylistTrack pt ON pl.PlaylistId = pt.PlaylistId
    JOIN Track tr ON pt.TrackId = tr.TrackId
    JOIN Genre ge ON tr.GenreId = ge.GenreId
    WHERE ge.Name = 'Rock'
),
 PlaylistsBlues AS (
    SELECT pl.PlaylistId
    FROM Playlist pl
    JOIN PlaylistTrack pt ON pl.PlaylistId = pt.PlaylistId
    JOIN Track tr ON pt.TrackId = tr.TrackId
    JOIN Genre ge ON tr.GenreId = ge.GenreId
    WHERE ge.Name = 'Blues'
)

SELECT pl.PlaylistId, pl.Name
FROM Playlist pl
JOIN PlaylistsRock pr ON pl.PlaylistId = pr.PlaylistId
WHERE pl.PlaylistId NOT IN (SELECT PlaylistId FROM PlaylistsBlues)
group by pl.PlaylistId, pl.name;



-- (6)
WITH AlbumesConMismoNombre AS (
    SELECT al.AlbumId, al.Title, tr.Name, tr.Composer
    FROM Album al
    JOIN Track tr ON al.AlbumId = tr.AlbumId
    WHERE al.Title = tr.Name
),
Compositores AS (
    SELECT tr.Composer as NombreCompositor, COUNT(acmn.AlbumId) AS Cantidad
    FROM AlbumesConMismoNombre acmn
    JOIN Album al ON acmn.AlbumId = al.AlbumId
    JOIN Track tr ON al.AlbumId = tr.AlbumId
    WHERE tr.Composer IS NOT NULL
    GROUP BY tr.Composer
)
SELECT c.NombreCompositor
FROM Compositores c
WHERE Cantidad = (SELECT MAX(Cantidad) FROM Compositores);
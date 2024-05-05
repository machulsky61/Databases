-- 2.1. Considerando el esquema de base de datos Chinook. Se pide:

-- (a) Listar Nombres (FirstName y LastName) de los clientes (Customer) de Brasil
SELECT FirstName, LastName
FROM Customer
WHERE Country = 'Brazil';

-- (b) Listar para cada cliente (Customer ) las facturas (Invoice) que tiene.
-- Se debera mostrar el nombre del cliente, la fecha y numero de factura (InvoiceDate e InvoiceID)
select c.FirstName, c.LastName, i.InvoiceDate, i.InvoiceID
from Customer c
join Invoice i on c.CustomerID = i.CustomerID

-- (c) Listar, para cada track, el nombre del artista (Artist) que hizo el Album al que pertenece dicho track.
select t.Name as TrackName, ar.Name as ArtistName
from Track t
join Album al on t.AlbumID = al.AlbumID
join Artist ar on al.ArtistID = ar.ArtistID


-- (d) Obtener los nombres de las PlayList que tienen mas de un track cuyo MediaType es ”MPEG audio file”
select pl.Name 
from Playlist pl
join PlaylistTrack plt on pl.PlaylistID = plt.PlaylistID
join Track t on plt.TrackID = t.TrackID
where t.MediaTypeId = 1
group by pl.Name

-- (e)  Obtener los nombres de las PlayList que tienen m´as de 10 tracks de albumes de ”Iron Maiden”
select pl.Name as PlaylistName
from Playlist pl
join PlaylistTrack plt on pl.PlaylistID = plt.PlaylistID
join Track t on plt.TrackID = t.TrackID
join Album al on t.AlbumID = al.AlbumID
join Artist ar on al.ArtistID = ar.ArtistID
where ar.Name = 'Iron Maiden'
group by pl.Name
having count(t.TrackID) > 10


-- (f) Indicar cuantos albumes tiene cada PlayList. Debe devolver nombre de la PlayList y cantidad de albumes.
select pl.Name as PlaylistName, count(distinct al.AlbumID) as AlbumCount
from Playlist pl
join PlaylistTrack plt on pl.PlaylistID = plt.PlaylistID
join Track t on plt.TrackID = t.TrackID
join Album al on t.AlbumID = al.AlbumID
group by pl.Name


-- (g) Listar los nombres de los empleados (Employee) mayores de 25 anos
--     que tienen al menos una factura (Invoice) con mas de 10 items.
select e.FirstName, e.LastName
from Employee e
join Customer c on e.EmployeeID = c.SupportRepID
join Invoice i on c.CustomerID = i.CustomerID
join InvoiceLine il on i.InvoiceID = il.InvoiceID
where datediff(year, e.BirthDate, getdate()) > 25 
group by e.FirstName, e.LastName
having count(il.InvoiceLineID) > 10


-- (h) Resolver el punto b) incluyendo en el listado los clientes que no tienen ninguna factura.
SELECT c.FirstName, c.LastName, i.InvoiceDate, i.InvoiceID
FROM Customer c
LEFT JOIN Invoice i on c.CustomerID = i.CustomerID


-- (i) Listar los nombres de los empleados que soportan clientes con mas de 10 facturas.
select e.FirstName, e.LastName
from Employee e
join Customer c on e.EmployeeID = c.SupportRepID
join Invoice i on c.CustomerID = i.CustomerID
group by e.FirstName, e.LastName
having count(i.InvoiceID) > 10



-- (j) Listar los empleados junto a su jefe. Las tuplas resultantes tendran la
--     siguiente forma: (nombre empleado (FirstName), apellido de empleado (LastName),
--     nombre jefe, apellido de jefe)
select e.FirstName as "Empleado Nombre", e.LastName as "Empleado Apellido", e2.FirstName as "Jefe Nombre", e2.LastName as "Jefe Apellido"
from Employee e
join Employee e2 on e.ReportsTo = e2.EmployeeID


-- (k) Resolver el ´ıtem anterior pero que no falte ning´un empleado en el listado
select e.FirstName as "Empleado Nombre", e.LastName as "Empleado Apellido", e2.FirstName as "Jefe Nombre", e2.LastName as "Jefe Apellido"
from Employee e
left join Employee e2 on e.ReportsTo = e2.EmployeeID


-- (l) Obtener el promedio de tracks comprados en las facturas de cada clientes.




-- (m) Obtener para cada empleado el total de tracks del genero ”Rock” comprados por los
--     clientes que soporta.
select e.EmployeeId, e.LastName, e.FirstName, COUNT(il.TrackId) as "Total Tracks Rock"
from Employee e
join Customer c on e.EmployeeID = c.SupportRepID
join Invoice i on c.CustomerID = i.CustomerID
join InvoiceLine il on i.InvoiceID = il.InvoiceID
join Track t on il.TrackID = t.TrackID
join Genre g on t.GenreID = g.GenreID
where g.Name = 'Rock'
group by e.EmployeeId, e.LastName, e.FirstName;

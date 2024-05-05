-- PARCIAL 2DO CUATRI 2023


 /*Obtener la cantidad de ventas por país ordenadas de mayor a
menor. La consulta debe devolver país y cantidad de ventas.
*/
select c.Country, count(i.InvoiceID) as "Cantidad de Ventas"
from Customer c
join Invoice i on c.CustomerID = i.CustomerID
group by c.Country
order by count(i.InvoiceID) desc

/*
Obtener los clientes cuyas compras en total superan los 40 pesos.
Devolver ID del cliente, y la cantidad total gastada de cada cliente
ordenada de mayor a menor.
*/
select c.CustomerID, sum(il.UnitPrice) as "Total Gastado"
from Customer c
join Invoice i on c.CustomerID = i.CustomerID
join InvoiceLine il on i.InvoiceID = il.InvoiceID
group by c.CustomerID
having sum(il.UnitPrice) > 40
order by sum(il.UnitPrice) desc


/*
¿Cuál es el promedio de álbumes por PlayList? La respuesta debe
ser un número.
*/
select avg(Albums) as "Promedio de Albumes por Playlist"
from (select p.PlaylistID, count(distinct t.AlbumID) as "Albums"
from Playlist p
join PlaylistTrack pt on p.PlaylistID = pt.PlaylistID
join Track t on pt.TrackID = t.TrackID
group by p.PlaylistID) as subquery

/*
Obtener la cantidad de ventas de cada vendedor al año y ordenar
de mayor a menor por cantidad de ventas. Se debe devolver
EmployeeId, año y cantidad de ventas.
*/

select e.EmployeeID, year(i.InvoiceDate) as "Año", count(i.InvoiceID) as "Cantidad de Ventas"
from Employee e
join Customer c on e.EmployeeID = c.SupportRepID
join Invoice i on c.CustomerID = i.CustomerID
group by e.EmployeeID, year(i.InvoiceDate)
order by count(i.InvoiceID) desc


/*
Obtener las Playlist cuyos tracks sean todos del mismo género.
Devolver la PlaylistId y su nombre junto con el id del género y su
nombre.
*/
with playlists_con_mismo_genero(PlaylistID) as (
    select pt.PlaylistID
    from PlaylistTrack pt
    inner join Track t on pt.TrackID = t.TrackID
    inner join Genre g on t.GenreID = g.GenreID
    group by pt.PlaylistID
    having count(distinct g.GenreID) = 1
)
select distinct p.PlaylistID, p.Name as "Nombre Playlist", g.GenreID, g.Name as "Nombre Genero"
from playlists_con_mismo_genero pcmg
inner join Playlist p on pcmg.PlaylistID = p.PlaylistID
inner join PlaylistTrack pt on p.PlaylistID = pt.PlaylistID
inner join Track t on pt.TrackID = t.TrackID
inner join Genre g on t.GenreID = g.GenreID


/*
Devolver, si es que lo hubiera, el nombre y el id del género que no
haya sido comprado aún por ningún cliente.
*/

select g.GenreID, g.Name as "Nombre Genero"
from Genre g
where g.GenreID not in (
    select distinct t.GenreID
    from Track t
    inner join InvoiceLine il on t.TrackID = il.TrackID
)

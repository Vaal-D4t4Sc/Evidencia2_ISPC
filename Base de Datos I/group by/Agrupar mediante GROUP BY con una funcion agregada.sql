select  Genre AS "Genero", count(*) AS "Total Bandas"
from artist 
group by  Genre

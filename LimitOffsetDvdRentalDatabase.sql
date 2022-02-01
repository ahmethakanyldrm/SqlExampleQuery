/* 
Limit ve Offset

*/

-- DvdRental database 

select * from film


select f.film_id ,f.title , f.release_year from film f Limit 5 

select f.film_id ,f.title , f.release_year from film f Limit 5  OFFSET 4


select f.film_id ,f.title , f.release_year from film f order by f.film_id desc Limit 5 


select f.film_id ,f.title , f.release_year from film f order by f.film_id desc Limit 5 OFFSET 1



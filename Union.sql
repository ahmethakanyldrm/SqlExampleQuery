/* 
	
	Union
	
	
*/

-- İki Tabloda ortak olan id leri tek 1 tane getirmeye yarar 

select customer_id from customer
union 
select p.customer_id from payment p


-- iki tabloda olanlarla olmayanları birleştir getir

select customer_id from customer
union all
select p.customer_id from payment p
order by customer_id asc



















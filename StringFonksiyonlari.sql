/* 
Karakter Fonksiyonlar�
(concatination,substring,left,right etc..)

Say�sal Fonksiyonlar
	abs,sum,avg,min,max,count

Tarih Fonksiyonlar�
		G�ncel saat,month, year

D�n��t�rme Fonksiyonlar�
	Cast,Convert. 
	
*/

-- s�tun birle�tirme 
select (dc.FirstName + ' ' +dc.LastName) as 'FirstLast'  from DimCustomer dc

-- Substring

select SUBSTRING (dc.FirstName,1,3) from DimCustomer dc

select SUBSTRING (dc.FirstName,2,2) from DimCustomer dc


--Left 

select left (dc.FirstName,2) from DimCustomer dc

select left (dc.FirstName,5) from DimCustomer dc


--Right

select right (dc.FirstName,5) from DimCustomer dc


select right (dc.FirstName,3) from DimCustomer dc


-- Lower ve Upper

select Lower (dc.FirstName) as 'K���k Harf' from DimCustomer dc

select Upper (dc.FirstName) as 'B�y�k Harf' from DimCustomer dc

--Trim 

--LTRIM(kolon ad�): LTRIM('   AHMET')= 'AHMET'

--RTRIM(kolon ad�): RTRIM('AHMET               ')= 'AHMET'


-- Len 
select dc.FirstName, Len (dc.FirstName) as 'Karakter Uzunlu�u' from DimCustomer dc


-- replace  bir veriyi istenen de�er ile de�i�tirir

select dc.FirstName, 
Replace (dc.FirstName,'Jon','Snow') as 'De�i�en Karakter' ,
Replace (dc.FirstName,'Ruben','Ned Stark') as 'De�i�en Karakter' 
from DimCustomer dc


-- reverse : stringi tersten yazd�r�r

select dc.FirstName, reverse (dc.FirstName) as 'Karakterin ters hali' from DimCustomer dc
















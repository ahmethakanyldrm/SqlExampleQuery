/* 
Karakter Fonksiyonlarý
(concatination,substring,left,right etc..)

Sayýsal Fonksiyonlar
	abs,sum,avg,min,max,count

Tarih Fonksiyonlarý
		Güncel saat,month, year

Dönüþtürme Fonksiyonlarý
	Cast,Convert. 
	
*/

-- sütun birleþtirme 
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

select Lower (dc.FirstName) as 'Küçük Harf' from DimCustomer dc

select Upper (dc.FirstName) as 'Büyük Harf' from DimCustomer dc

--Trim 

--LTRIM(kolon adý): LTRIM('   AHMET')= 'AHMET'

--RTRIM(kolon adý): RTRIM('AHMET               ')= 'AHMET'


-- Len 
select dc.FirstName, Len (dc.FirstName) as 'Karakter Uzunluðu' from DimCustomer dc


-- replace  bir veriyi istenen deðer ile deðiþtirir

select dc.FirstName, 
Replace (dc.FirstName,'Jon','Snow') as 'Deðiþen Karakter' ,
Replace (dc.FirstName,'Ruben','Ned Stark') as 'Deðiþen Karakter' 
from DimCustomer dc


-- reverse : stringi tersten yazdýrýr

select dc.FirstName, reverse (dc.FirstName) as 'Karakterin ters hali' from DimCustomer dc
















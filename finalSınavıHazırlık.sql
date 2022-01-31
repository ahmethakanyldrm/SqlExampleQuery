--create clustered index o on ogrenci(no)

--drop index ogrindex


select o.no,o.adi, 'Mezuniyet Durumu' = Case 
when sinif=4 then 'Mezuniyete 1 seneden az var'
when sinif=3 then 'Mezuniyete 1 sene var'
when sinif =2 then 'Mezuniyete 2 sene var'
else 'Mezuniyete 1 sene var' 
end 
from ogrenci o

select * from ogrenci


-- Alter Table tabloda de�i�iklik yapmak yeni bir s�tun eklemek s�tun tipini de�i�mek gibi
-- create index index olu�turmak i�in 
-- create view g�r�nt� olu�turmak i�in

--Alter table notlar
--add mezuniyet_sinavi tinyint

--drop table tablo ad�

--truncate table notlar

select h.h_adi,h.h_soyadi,h.unvani from hocalar h
select * from ogrenci
update ogrenci set adi='HAKAN' where adi='Feyza' or adi='Bilal'

update ogrenci set adi='Feyza' where soyadi='U�an' 

update ogrenci set adi='Bilal' where soyadi='Baymaz' 



Select count(*) as [��remci Say�s�] from Tbl_Ogrenciler
--update Tbl_Ogrenciler  set  ogrSehir='Elaz��' where ogrAd='Ece' 
Select count(*) as [��remci Say�s�] from Tbl_Ogrenciler o where  o.ogrSehir='Elaz��'


select sum(vize) as 'vize1' from Tbl_Notlar

select sum(vize) as 'vize1',sum(vize2) as 'vize2',sum(final) as 'final' from Tbl_Notlar

select avg(vize) from Tbl_Notlar

select avg(vize) as 'Vize Ortalamas�',avg(vize2) as 'Vize 2 Ortalamas�',avg(final) as 'Final Ortalamas�' from Tbl_Notlar

select * from Tbl_Ogrenciler


select  t.ogrSehir, count(*) from Tbl_Ogrenciler t group by t.ogrSehir

select  t.cinsiyet, count(*) from Tbl_Ogrenciler t group by t.cinsiyet

select  t.ogrKulup , count(*) from Tbl_Ogrenciler t group by t.ogrKulup

select COUNT(*) as 'Ge�enlerin Say�s�' from Tbl_Notlar n where n.ortalama>=50 

select n.Durum as 'Durum',count(*) as 'Ki�i Say�s�' from Tbl_Notlar n group by n.Durum

update Tbl_Notlar set ortalama=(vize+vize2+final)/3 

update Tbl_Notlar set Durum=0 where ortalama<50 
update Tbl_Notlar set Durum=1 where ortalama>=50 


select t.ogrKulup,COUNT(*) from Tbl_Ogrenciler t group by t.ogrKulup



select  t.ogrSehir,COUNT(*) from Tbl_Ogrenciler t group by t.ogrSehir

select t.ogrSehir,COUNT(*)  from Tbl_Ogrenciler t group by t.ogrSehir having COUNT(*)=3

select ogrKulup,COUNT(*) from Tbl_Ogrenciler group by ogrKulup



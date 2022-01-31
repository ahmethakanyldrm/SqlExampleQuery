

--update Tbl_Ogrenciler set cinsiyet ='Kýz' where ogrAd='Ece'
--update Tbl_Ogrenciler set cinsiyet ='Kýz' 
--update Tbl_Ogrenciler set cinsiyet ='Kýz' where ogrAd='Ece' or ogrAd='Emel' or ogrAd='Melisa'

--update Tbl_Ogrenciler set ogrKulup ='Biliþim' where  ogrAd='Berkay'

--insert into Tbl_Notlar(ogrId,ders,vize ,vize2,final) values (5,1,25,89,67)

update Tbl_Notlar set ortalama = (vize+vize2+final)/3

update Tbl_Notlar set durum =1 where ortalama>50

update Tbl_Notlar set durum =0 where ortalama<50

update Tbl_Notlar set ortalama=(vize+vize2+final)/3 
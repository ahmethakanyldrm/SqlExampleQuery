use UniversityCourseDatabase

--Tablolar� olu�turma 

create table Ders(

DersID nvarchar(10) primary key, 
DersAdi nvarchar(50), 
OgretmenID nvarchar(10), 
BolumID nvarchar(10)

)

create table Ogrenci(

OgrenciNo int primary key, 
OgrenciAdi nvarchar(50), 
Adres nvarchar(50), 
DogumTarihi date, 
BolumID nvarchar(10) ,
KayitTarihi date , 
MezuniyetTarihi date

)

create table Bolum(
BolumID nvarchar(10) primary key, 
BolumAdi nvarchar(50)
)

create table Ogretmen(
OgretmenID nvarchar(10) primary key, 
OgretmenAdi nvarchar(50), 
OgretmenUnvani nvarchar(15), 
BolumID nvarchar(10)
)

create table DersKayit(
DersKayitID int primary key, 
OgrenciNo int ,
DersID nvarchar(10) , 
Donem int
)

create table OgrenciBasari(
BasariID int primary key, 
OgrenciNo int ,
DersID nvarchar(10) , 
Vize int ,
Final int , 
Butunleme int
)




--Veri Ekleme 

--Ders Tablosu 

insert into Ders (DersID,DersAdi,OgretmenID,BolumID) values ('YMH315','i�LET�M S�STEMLER�','A003','02')

insert into Ders (DersID,DersAdi,OgretmenID,BolumID) values ('YMH321','Mikro ��lemci','A065','04')

insert into Ders (DersID,DersAdi,OgretmenID,BolumID) values ('YMH325','Veri Taban� Y�netim Sistemleri','A012','06')

insert into Ders (DersID,DersAdi,OgretmenID,BolumID) values ('YMH345','Programlama Dilleri','A003','02')


--��renci Tablosu

insert into Ogrenci (OgrenciNo,OgrenciAdi,Adres,DogumTarihi,BolumID,KayitTarihi,MezuniyetTarihi) 
values (1212,'Ahmet Y�ld�r�m','Elaz��','1999-12-07','02','2023-06-18',Null)

insert into Ogrenci (OgrenciNo,OgrenciAdi,Adres,DogumTarihi,BolumID,KayitTarihi,MezuniyetTarihi) 
values (1214,'Hakan Y�ld�r�m','Ankara','1999-12-07','02','2023-06-18',Null)

insert into Ogrenci (OgrenciNo,OgrenciAdi,Adres,DogumTarihi,BolumID,KayitTarihi,MezuniyetTarihi) 
values (1216,'Suna Y�lmaz','Ankara','1992-12-07','02','2023-06-18',Null)

insert into Ogrenci (OgrenciNo,OgrenciAdi,Adres,DogumTarihi,BolumID,KayitTarihi,MezuniyetTarihi) 
values (1234,'Emel Erg�n','�stanbul','1999-12-07','02','2023-06-18',Null)


--B�l�m Tablosu


insert into Bolum ([BolumID],[BolumAdi]) 
values ('02','Yaz�l�m M�hendisli�i')

insert into Bolum ([BolumID],[BolumAdi]) 
values ('04','Bilgisayar M�hendisli�i')

insert into Bolum ([BolumID],[BolumAdi]) 
values ('06','End�stri M�hendisli�i')



--��retmen Tablosu


insert into Ogretmen ([OgretmenID],[OgretmenAdi],[OgretmenUnvani],[BolumID]) 
values ('A003','�zal Y�ld�r�m','Do�. Dr.','02')

insert into Ogretmen ([OgretmenID],[OgretmenAdi],[OgretmenUnvani],[BolumID]) 
values ('A012','Murat Aydo�an','Yrd .Do�. Dr.','04')

insert into Ogretmen ([OgretmenID],[OgretmenAdi],[OgretmenUnvani],[BolumID]) 
values ('A065','Ahmet Atak','Do�. Dr.','06')

insert into Ogretmen ([OgretmenID],[OgretmenAdi],[OgretmenUnvani],[BolumID]) 
values ('A144','Murat Karabatak','Prof. Dr.','02')


 --Foreign Key Tan�mlama 
Alter table Ogrenci Add Constraint FKBolOgr
Foreign key(BolumID) References Bolum(BolumID)







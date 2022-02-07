alter table [dbo].[Ders]
add constraint FKBolDers
foreign key (BolumID) references Bolum(BolumID)

alter table [dbo].[Ders]
add constraint FKDrsOgretmen
foreign key (OgretmenID) references Ogretmen(OgretmenID)


alter table [dbo].[DersKayit]
add constraint FKOgrDersKayit
foreign key ([OgrenciNo]) references [dbo].[Ogrenci]([OgrenciNo])

alter table [dbo].[DersKayit]
add constraint FKDersKayit
foreign key ([DersID]) references [dbo].[Ders]([DersID])

alter table [dbo].[OgrenciBasari]
add constraint FKDersKayit
foreign key ([DersID]) references [dbo].[Ders]([DersID])

alter table [dbo].[OgrenciBasari]
add constraint FKDersBasari
foreign key ([OgrenciNo]) references [dbo].[Ogrenci]([OgrenciNo])

alter table  [dbo].[OgrenciBasari] 
alter column [OgrenciNo] int










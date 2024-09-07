-- DML (Data Manipulation Language - Veri ��leme Dili)  // VER� �ZER�NDE DE����KL�K YAPAR

-- T�m ��rencilerin bilgilerini se�mek i�in kullan�l�r
--select * from TBLOGRENC�LER 

-- ��rencilerin ad ve kul�p bilgilerini listelemek i�in
select OGRAD, OGRKULUP from TBLOGRENC�LER

-- Belirli bir k�sm� se�ip �al��t�rabiliriz

-- Ad� 'Ali' olan ��rencinin t�m bilgilerini getirmek i�in
select * from TBLOGRENC�LER where OGRAD='Ali' -- where ko�ulu belirli bir durumu sa�lamak i�in kullan�l�r

-- Ad� 'Ali' olan ��rencinin ya�ad��� �ehri getirmek i�in
select OGRSEH�R from TBLOGRENC�LER where OGRAD='Ali' 

-- �ehri 'Adana' ve kul�b� 'santran�' olan ��rencilerin t�m bilgilerini getirmek i�in
select * from TBLOGRENC�LER where OGRSEH�R='Adana' and OGRKULUP='santran�'

-- �ehri 'Adana' veya kul�b� 'santran�' olan ��rencilerin t�m bilgilerini getirmek i�in
select * from TBLOGRENC�LER where OGRSEH�R='Adana' or OGRKULUP='santran�'

-- Decimal(x,y): x toplam basamak say�s�, y virg�lden sonraki basamak say�s�d�r
--�rnek decimal(78,65)
--decimal(4,2) x t�m�n�n toplam�, y virg�lden sonraki toplam basamak say�s�d�r

-- S�nav notlar�n�n ortalamas�n� manuel hesaplamak i�in
--select (SINAV1 + SINAV2 + SINAV3) / 3 from TBLNOTLAR -- ORTALAMAYI MANUEL HESAPLAMA

-- 'Baran Y�ceda�' adl� yeni bir ��renci eklemek i�in
Insert Into TBLOGRENC�LER (OGRAD, OGRSOYAD, OGRSEH�R) values ('Baran', 'Y�ceda�', 'Elaz��')

-- Notlar tablosuna yeni bir s�nav sonucu eklemek i�in
Insert Into TBLNOTLAR (OGRENC�, DERS, SINAV1, SINAV3) values (6, 2, 88, 67)

-- Dikkat: Bu sorgu TBLDERSLER tablosunun t�m verilerini siler
-- Delete from TBLDERSLER 

-- Belirli bir ders ID'sine g�re veri silmek i�in
Delete from TBLDERSLER where DERSID=3 -- �d ye g�re sil

-- Ders ad� 'Algoritma' olan t�m verileri silmek i�in
delete from TBLDERSLER where DERSAD='Algoritma'  -- isme g�re sil 

-- Tablonun i�indeki t�m verileri silmek i�in, tablo yap�s�n� bozmadan
Truncate Table TBLDERSLER -- BUDA TABLONUN ���N� BO�ALTIYOR

-- T�m ��rencilerin cinsiyetini 'Erkek' olarak g�ncellemek i�in
-- D�KKAT: 'WHERE' ifadesi yoksa t�m kay�tlar g�ncellenir
update TBLOGRENC�LER set OGRC�NS�YET='Erkek'

-- ID'si 4 veya 5 olan ��rencilerin cinsiyetini 'K�zz' olarak g�ncellemek i�in
update TBLOGRENC�LER set OGRC�NS�YET='K�zz' where OGRID=4 or OGRID=5

-- Ad� 'Baran' olan ��rencinin kul�b�n� 'Kitapl�k' olarak g�ncellemek i�in
update TBLOGRENC�LER set OGRKULUP='Kitapl�k' where OGRAD='Baran'

-- T�m not kay�tlar�nda ders ID'sini 2 olarak g�ncellemek i�in
update TBLNOTLAR set DERS=2

-- Yeni bir s�nav sonucu eklemek i�in
Insert Into TBLNOTLAR (OGRENC�, DERS, SINAV1, SINAV2) values(5, 2, 78, 66)

-- S�nav notlar�n�n ortalamas�n� hesaplay�p g�ncellemek i�in
update TBLNOTLAR set ORTALAMA =(S�nav1 + S�nav2 + S�nav3) / 3

-- Ortalama 50 veya �zeri olan ��rencilerin durumunu 'ge�ti' (1) olarak g�ncellemek i�in
update TBLNOTLAR set DURUM=1 where ORTALAMA >= 50 

-- Ortalama 50 veya alt�nda olan ��rencilerin durumunu 'kald�' (0) olarak g�ncellemek i�in
update TBLNOTLAR set DURUM=0 where ORTALAMA <= 50

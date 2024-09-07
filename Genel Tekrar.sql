-- Yeni bir veritaban� olu�turur ve kullan�ma al�r
Create database SatisVT
USE SatisVT

-- Kategori bilgilerini tutacak bir tablo olu�turur
Create Table TBLKATEGOR�
(
    KATEGORIID tinyint identity(1,1) primary key,  -- Otomatik artan ve birincil anahtar olarak Kategori ID'si
    KATEGORIAD varchar(50)  -- 50 karakter uzunlu�unda Kategori ad�
)

-- �r�n bilgilerini tutacak bir tablo olu�turur
Create Table TBLURUNLER
(
    URUNID int identity(1,1) primary key,  -- Otomatik artan ve birincil anahtar olarak �r�n ID'si
    URUNAD varchar(50),  -- 50 karakter uzunlu�unda �r�n ad�
    URUNMARKA varchar(50),  -- 50 karakter uzunlu�unda �r�n markas�
    KATEGOR� tinyint,  -- �r�n�n hangi kategoriye ait oldu�unu g�sterir (TBLKATEGOR� ile ili�kilendirilebilir)
    URUNALISFIYAT decimal(18,2),  -- �r�n�n al�� fiyat�
    URUNSATISFIYAT decimal(18,2),  -- �r�n�n sat�� fiyat�
    URUNSTOK smallint check(URUNSTOK>0),  -- �r�n stok bilgisi ve s�f�rdan b�y�k olma �art�
    URUNDURUM bit default '1'  -- �r�n�n durumu (Varsay�lan olarak '1' yani aktif)
)

-- Personel bilgilerini tutacak bir tablo olu�turur
Create TABLE TBLPERSONEL
(
    PERSONELID smallint identity(1,1) primary key,  -- Otomatik artan ve birincil anahtar olarak Personel ID'si
    PERSONELADSOYAD VARCHAR(50)  -- 50 karakter uzunlu�unda personel ad� soyad�
)

-- M��teri bilgilerini tutacak bir tablo olu�turur
Create TABLE TBLMUSTER�
(
    MUSTERIID int primary key identity(1,1),  -- Otomatik artan ve birincil anahtar olarak M��teri ID'si
    MUSTERIAD VARCHAR(50),  -- M��teri ad�
    MUSTERISOYAD VARCHAR(50),  -- M��teri soyad�
    MUSTERISEHIR VARCHAR(13),  -- M��terinin �ehri (13 karakterlik)
    MUSTERIBAKIYE decimal(18,2)  -- M��teri bakiyesi
)

-- Sat�� hareketlerini tutacak bir tablo olu�turur
Create table TBLHAREKET
(
    HAREKETID int primary key identity(1,1),  -- Otomatik artan ve birincil anahtar olarak Hareket ID'si
    URUN int,  -- �r�n ID'si (TBLURUNLER ile ili�kilendirilebilir)
    MUSTER� int,  -- M��teri ID'si (TBLMUSTER� ile ili�kilendirilebilir)
    PERSONEL smallint,  -- Personel ID'si (TBLPERSONEL ile ili�kilendirilebilir)
    ADET int,  -- Sat�lan �r�n adedi
    TUTAR Decimal(18,2),  -- Toplam tutar
    TAR�H smalldatetime  -- Hareketin yap�ld��� tarih
)

-- TBLURUNLER tablosundaki t�m verileri siler (Tablo yap�s�n� korur)
truncate table TBLURUNLER

-- TBLKATEGOR� tablosuna farkl� kategoriler ekler
Insert Into TBLKATEGOR� (KATEGORIAD) values ('Bilgisiyar')
Insert Into TBLKATEGOR� (KATEGORIAD) values ('Beyaz E�ya')
Insert Into TBLKATEGOR� (KATEGORIAD) values ('K���k ev Aleti')
Insert Into TBLKATEGOR� (KATEGORIAD) values ('TV')

-- TBLURUNLER tablosundaki t�m kay�tlar� g�r�nt�ler
SELECT * FROM TBLURUNLER

-- 'KETTLE' adl� �r�n� bulur ve ad�n� 'SU ISITICI' olarak g�nceller
UPDATE TBLURUNLER SET URUNAD='SU ISITICI' WHERE URUNAD='KETTLE'

-- TBLURUNLER tablosundaki t�m kay�tlar� tekrar g�r�nt�ler
select * from TBLURUNLER

-- 'LAPTOP' adl� �r�n�n sat�� fiyat�na 500 ekler
update TBLURUNLER set URUNSATISFIYAT += 500 where URUNAD='LAPTOP'

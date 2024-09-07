-- Yeni bir veritabaný oluþturur ve kullanýma alýr
Create database SatisVT
USE SatisVT

-- Kategori bilgilerini tutacak bir tablo oluþturur
Create Table TBLKATEGORÝ
(
    KATEGORIID tinyint identity(1,1) primary key,  -- Otomatik artan ve birincil anahtar olarak Kategori ID'si
    KATEGORIAD varchar(50)  -- 50 karakter uzunluðunda Kategori adý
)

-- Ürün bilgilerini tutacak bir tablo oluþturur
Create Table TBLURUNLER
(
    URUNID int identity(1,1) primary key,  -- Otomatik artan ve birincil anahtar olarak Ürün ID'si
    URUNAD varchar(50),  -- 50 karakter uzunluðunda Ürün adý
    URUNMARKA varchar(50),  -- 50 karakter uzunluðunda Ürün markasý
    KATEGORÝ tinyint,  -- Ürünün hangi kategoriye ait olduðunu gösterir (TBLKATEGORÝ ile iliþkilendirilebilir)
    URUNALISFIYAT decimal(18,2),  -- Ürünün alýþ fiyatý
    URUNSATISFIYAT decimal(18,2),  -- Ürünün satýþ fiyatý
    URUNSTOK smallint check(URUNSTOK>0),  -- Ürün stok bilgisi ve sýfýrdan büyük olma þartý
    URUNDURUM bit default '1'  -- Ürünün durumu (Varsayýlan olarak '1' yani aktif)
)

-- Personel bilgilerini tutacak bir tablo oluþturur
Create TABLE TBLPERSONEL
(
    PERSONELID smallint identity(1,1) primary key,  -- Otomatik artan ve birincil anahtar olarak Personel ID'si
    PERSONELADSOYAD VARCHAR(50)  -- 50 karakter uzunluðunda personel adý soyadý
)

-- Müþteri bilgilerini tutacak bir tablo oluþturur
Create TABLE TBLMUSTERÝ
(
    MUSTERIID int primary key identity(1,1),  -- Otomatik artan ve birincil anahtar olarak Müþteri ID'si
    MUSTERIAD VARCHAR(50),  -- Müþteri adý
    MUSTERISOYAD VARCHAR(50),  -- Müþteri soyadý
    MUSTERISEHIR VARCHAR(13),  -- Müþterinin þehri (13 karakterlik)
    MUSTERIBAKIYE decimal(18,2)  -- Müþteri bakiyesi
)

-- Satýþ hareketlerini tutacak bir tablo oluþturur
Create table TBLHAREKET
(
    HAREKETID int primary key identity(1,1),  -- Otomatik artan ve birincil anahtar olarak Hareket ID'si
    URUN int,  -- Ürün ID'si (TBLURUNLER ile iliþkilendirilebilir)
    MUSTERÝ int,  -- Müþteri ID'si (TBLMUSTERÝ ile iliþkilendirilebilir)
    PERSONEL smallint,  -- Personel ID'si (TBLPERSONEL ile iliþkilendirilebilir)
    ADET int,  -- Satýlan ürün adedi
    TUTAR Decimal(18,2),  -- Toplam tutar
    TARÝH smalldatetime  -- Hareketin yapýldýðý tarih
)

-- TBLURUNLER tablosundaki tüm verileri siler (Tablo yapýsýný korur)
truncate table TBLURUNLER

-- TBLKATEGORÝ tablosuna farklý kategoriler ekler
Insert Into TBLKATEGORÝ (KATEGORIAD) values ('Bilgisiyar')
Insert Into TBLKATEGORÝ (KATEGORIAD) values ('Beyaz Eþya')
Insert Into TBLKATEGORÝ (KATEGORIAD) values ('Küçük ev Aleti')
Insert Into TBLKATEGORÝ (KATEGORIAD) values ('TV')

-- TBLURUNLER tablosundaki tüm kayýtlarý görüntüler
SELECT * FROM TBLURUNLER

-- 'KETTLE' adlý ürünü bulur ve adýný 'SU ISITICI' olarak günceller
UPDATE TBLURUNLER SET URUNAD='SU ISITICI' WHERE URUNAD='KETTLE'

-- TBLURUNLER tablosundaki tüm kayýtlarý tekrar görüntüler
select * from TBLURUNLER

-- 'LAPTOP' adlý ürünün satýþ fiyatýna 500 ekler
update TBLURUNLER set URUNSATISFIYAT += 500 where URUNAD='LAPTOP'

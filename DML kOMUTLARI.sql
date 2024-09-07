-- DML (Data Manipulation Language - Veri Ýþleme Dili)  // VERÝ ÜZERÝNDE DEÐÝÞÝKLÝK YAPAR

-- Tüm öðrencilerin bilgilerini seçmek için kullanýlýr
--select * from TBLOGRENCÝLER 

-- Öðrencilerin ad ve kulüp bilgilerini listelemek için
select OGRAD, OGRKULUP from TBLOGRENCÝLER

-- Belirli bir kýsmý seçip çalýþtýrabiliriz

-- Adý 'Ali' olan öðrencinin tüm bilgilerini getirmek için
select * from TBLOGRENCÝLER where OGRAD='Ali' -- where koþulu belirli bir durumu saðlamak için kullanýlýr

-- Adý 'Ali' olan öðrencinin yaþadýðý þehri getirmek için
select OGRSEHÝR from TBLOGRENCÝLER where OGRAD='Ali' 

-- Þehri 'Adana' ve kulübü 'santranç' olan öðrencilerin tüm bilgilerini getirmek için
select * from TBLOGRENCÝLER where OGRSEHÝR='Adana' and OGRKULUP='santranç'

-- Þehri 'Adana' veya kulübü 'santranç' olan öðrencilerin tüm bilgilerini getirmek için
select * from TBLOGRENCÝLER where OGRSEHÝR='Adana' or OGRKULUP='santranç'

-- Decimal(x,y): x toplam basamak sayýsý, y virgülden sonraki basamak sayýsýdýr
--örnek decimal(78,65)
--decimal(4,2) x tümünün toplamý, y virgülden sonraki toplam basamak sayýsýdýr

-- Sýnav notlarýnýn ortalamasýný manuel hesaplamak için
--select (SINAV1 + SINAV2 + SINAV3) / 3 from TBLNOTLAR -- ORTALAMAYI MANUEL HESAPLAMA

-- 'Baran Yücedað' adlý yeni bir öðrenci eklemek için
Insert Into TBLOGRENCÝLER (OGRAD, OGRSOYAD, OGRSEHÝR) values ('Baran', 'Yücedað', 'Elazýð')

-- Notlar tablosuna yeni bir sýnav sonucu eklemek için
Insert Into TBLNOTLAR (OGRENCÝ, DERS, SINAV1, SINAV3) values (6, 2, 88, 67)

-- Dikkat: Bu sorgu TBLDERSLER tablosunun tüm verilerini siler
-- Delete from TBLDERSLER 

-- Belirli bir ders ID'sine göre veri silmek için
Delete from TBLDERSLER where DERSID=3 -- ýd ye göre sil

-- Ders adý 'Algoritma' olan tüm verileri silmek için
delete from TBLDERSLER where DERSAD='Algoritma'  -- isme göre sil 

-- Tablonun içindeki tüm verileri silmek için, tablo yapýsýný bozmadan
Truncate Table TBLDERSLER -- BUDA TABLONUN ÝÇÝNÝ BOÞALTIYOR

-- Tüm öðrencilerin cinsiyetini 'Erkek' olarak güncellemek için
-- DÝKKAT: 'WHERE' ifadesi yoksa tüm kayýtlar güncellenir
update TBLOGRENCÝLER set OGRCÝNSÝYET='Erkek'

-- ID'si 4 veya 5 olan öðrencilerin cinsiyetini 'Kýzz' olarak güncellemek için
update TBLOGRENCÝLER set OGRCÝNSÝYET='Kýzz' where OGRID=4 or OGRID=5

-- Adý 'Baran' olan öðrencinin kulübünü 'Kitaplýk' olarak güncellemek için
update TBLOGRENCÝLER set OGRKULUP='Kitaplýk' where OGRAD='Baran'

-- Tüm not kayýtlarýnda ders ID'sini 2 olarak güncellemek için
update TBLNOTLAR set DERS=2

-- Yeni bir sýnav sonucu eklemek için
Insert Into TBLNOTLAR (OGRENCÝ, DERS, SINAV1, SINAV2) values(5, 2, 78, 66)

-- Sýnav notlarýnýn ortalamasýný hesaplayýp güncellemek için
update TBLNOTLAR set ORTALAMA =(Sýnav1 + Sýnav2 + Sýnav3) / 3

-- Ortalama 50 veya üzeri olan öðrencilerin durumunu 'geçti' (1) olarak güncellemek için
update TBLNOTLAR set DURUM=1 where ORTALAMA >= 50 

-- Ortalama 50 veya altýnda olan öðrencilerin durumunu 'kaldý' (0) olarak güncellemek için
update TBLNOTLAR set DURUM=0 where ORTALAMA <= 50

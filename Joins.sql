-- TBLOGRENCÝLER tablosundaki OGRKULUP sütununda 'Gezi' olan kayýtlarý '4' ile günceller.
UPDATE TBLOGRENCÝLER SET OGRKULUP = 4 WHERE OGRKULUP = 'Gezi'

-- TBLOGRENCÝLER tablosuna yeni bir öðrenci ekler: OGRAD='Þehmus', OGRKULUP=4, OGRSEHÝR='Batman'
INSERT INTO TBLOGRENCÝLER (OGRAD, OGRKULUP, OGRSEHÝR) VALUES ('Þehmus', 4, 'Batman')

-- TBLNOTLAR tablosundaki sýnav notlarýný ve ders adlarýný TBLDERSLER tablosýyla birleþtirerek seçer.
SELECT NOTID, DERSAD, SINAV1, SINAV2, SINAV3, ORTALAMA, DURUM
FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID

-- TBLNOTLAR tablosundaki sýnav notlarýný, ders adlarýný ve öðrenci bilgilerini TBLOGRENCÝLER tablosuyla birleþtirerek seçer.
SELECT NOTID, OGRAD + ' ' + OGRSOYAD AS 'ad soyad', DERSAD, SINAV1, SINAV2, SINAV3, ORTALAMA, DURUM
FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
INNER JOIN TBLOGRENCÝLER ON TBLOGRENCÝLER.OGRID = TBLNOTLAR.OGRENCÝ

-- TBLNOTLAR tablosundaki tüm kayýtlarý seçer.
SELECT * FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki sýnav notlarý ve dersler için ORTALAMA sütununu, SINAV1, SINAV2 ve SINAV3'ün ortalamasý olarak günceller.
UPDATE TBLNOTLAR SET ORTALAMA = (SINAV1 + SINAV2 + SINAV3) / 3 WHERE DERS = 1

-- TBLNOTLAR tablosundaki ORTALAMA deðeri 50 veya daha büyük olan kayýtlarýn DURUM sütununu '1' olarak günceller.
UPDATE TBLNOTLAR SET DURUM = 1 WHERE ORTALAMA >= 50

-- TBLNOTLAR tablosundaki ORTALAMA deðeri 50 veya daha küçük olan kayýtlarýn DURUM sütununu '0' olarak günceller.
UPDATE TBLNOTLAR SET DURUM = 0 WHERE ORTALAMA < 50

-- TBLDERSLER tablosundaki 'Matamatik' dersine ait sýnav not bilgilerini seçer. DERSAD='Matamatik' olan dersin ID'sini alt sorgu olarak kullanýr.
SELECT * FROM TBLNOTLAR WHERE DERS = (SELECT DERSID FROM TBLDERSLER WHERE DERSAD = 'Matamatik')

-- TBLNOTLAR tablosunu sol dýþ birleþtirme (LEFT JOIN) kullanarak TBLOGRENCÝLER tablosu ile birleþtirir. TBLNOTLAR'daki tüm kayýtlarý ve TBLOGRENCÝLER'deki eþleþen kayýtlarý gösterir.
SELECT * FROM TBLNOTLAR
LEFT JOIN TBLOGRENCÝLER ON TBLNOTLAR.OGRENCÝ = TBLOGRENCÝLER.OGRID

-- TBLNOTLAR tablosunu sað dýþ birleþtirme (RIGHT JOIN) kullanarak TBLOGRENCÝLER tablosu ile birleþtirir. TBLOGRENCÝLER'deki tüm kayýtlarý ve TBLNOTLAR'daki eþleþen kayýtlarý gösterir.
SELECT * FROM TBLNOTLAR
RIGHT JOIN TBLOGRENCÝLER ON TBLNOTLAR.OGRENCÝ = TBLOGRENCÝLER.OGRID

-- TBLNOTLAR tablosunu tam dýþ birleþtirme (FULL JOIN) kullanarak TBLOGRENCÝLER tablosu ile birleþtirir. Her iki tablodaki tüm kayýtlarý, eþleþen kayýtlar varsa bunlarý gösterir.
SELECT * FROM TBLNOTLAR
FULL JOIN TBLOGRENCÝLER ON TBLNOTLAR.OGRENCÝ = TBLOGRENCÝLER.OGRID

-- TBLOGRENCÝLER tablosundaki toplam öðrenci sayýsýný hesaplar.
SELECT COUNT(*) FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki toplam öðrenci sayýsýný 'Toplam Kayýt Sayýsý' olarak gösterir.
SELECT COUNT(*) AS 'Toplam Kayýt Sayýsý' FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosunda OGRSEHÝR= 'Adana' olan öðrenci sayýsýný hesaplar.
SELECT COUNT(*) AS 'Toplam Kiþi' FROM TBLOGRENCÝLER WHERE OGRSEHÝR = 'Adana'

-- TBLNOTLAR tablosundaki SINAV1 deðerlerinin toplamýný hesaplar.
SELECT SUM(SINAV1) AS 'Toplam' FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin toplamýný hesaplar ve 'Toplam' olarak gösterir.
SELECT SUM(SINAV1), SUM(SINAV2), SUM(SINAV3) AS 'Toplam' FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1 deðerlerinin ortalamasýný hesaplar.
SELECT AVG(SINAV1) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin ortalamalarýný hesaplar.
SELECT AVG(SINAV1), AVG(SINAV2), AVG(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1 deðerlerinin en yüksek deðerini bulur.
SELECT MAX(SINAV1) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin en yükseklerini bulur.
SELECT MAX(SINAV1), MAX(SINAV2), MAX(SINAV3) FROM TBLNOTLAR

------------------

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin toplamlarýný hesaplar.
SELECT SUM(SINAV1), SUM(SINAV2), SUM(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin ortalamalarýný hesaplar.
SELECT AVG(SINAV1), AVG(SINAV2), AVG(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin en yükseklerini bulur.
SELECT MAX(SINAV1), MAX(SINAV2), MAX(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 deðerlerinin en düþüklerini bulur.
SELECT MIN(SINAV1), MIN(SINAV2), MIN(SINAV3) FROM TBLNOTLAR

-------------------------------------------------

-- TBLOGRENCÝLER tablosunda OGRSEHÝR sütununa göre gruplandýrýr ve her þehirdeki öðrenci sayýsýný gösterir.
SELECT OGRSEHÝR, COUNT(*) FROM TBLOGRENCÝLER GROUP BY OGRSEHÝR

-- TBLOGRENCÝLER tablosunda OGRCÝNSÝYET sütununa göre gruplandýrýr ve her cinsiyetteki öðrenci sayýsýný gösterir.
SELECT OGRCÝNSÝYET, COUNT(*) FROM TBLOGRENCÝLER GROUP BY OGRCÝNSÝYET

-- TBLOGRENCÝLER tablosundaki OGRCÝNSÝYET sütununda NULL olan kayýtlarý 'Erkek' olarak günceller.
UPDATE TBLOGRENCÝLER SET OGRCÝNSÝYET = 'Erkek' WHERE OGRCÝNSÝYET IS NULL

-- TBLNOTLAR tablosunda DURUM=1 olan kayýtlarý gruplandýrýr ve her öðrenci için geçen öðrenci sayýsýný gösterir.
SELECT OGRENCÝ, COUNT(*) AS 'Geçen Öðrenciler Sayýsý' FROM TBLNOTLAR WHERE DURUM = 1 GROUP BY OGRENCÝ

-- TBLOGRENCÝLER tablosunda OGRKULUP sütununa göre gruplandýrýr ve her kulüpteki öðrenci sayýsýný gösterir.
SELECT OGRKULUP, COUNT(*) AS 'Kulüp Kiþi Sayýlarý' FROM TBLOGRENCÝLER GROUP BY OGRKULUP

-- TBLOGRENCÝLER tablosunda OGRAD='Ali' olan kayýtlarý OGRKULUP sütununa göre gruplandýrýr ve her gruptaki öðrenci sayýsýný gösterir.
SELECT OGRKULUP, COUNT(*) FROM TBLOGRENCÝLER WHERE OGRAD = 'Ali' GROUP BY OGRKULUP

-- TBLOGRENCÝLER tablosunda OGRSEHÝR sütununa göre gruplandýrýr ve yalnýzca öðrenci sayýsý 2 olan þehirleri gösterir.
SELECT OGRSEHÝR, COUNT(*) AS 'Sayý' FROM TBLOGRENCÝLER GROUP BY OGRSEHÝR HAVING COUNT(*) = 2

-- TBLOGRENCÝLER tablosunda OGRKULUP sütununa göre gruplandýrýr ve OGRKULUP='Kitaplýk' olan gruptaki öðrenci sayýsýný gösterir.
SELECT OGRKULUP, COUNT(*) AS 'Sayý' FROM TBLOGRENCÝLER GROUP BY OGRKULUP HAVING OGRKULUP = 'Kitaplýk'

-- TBLNOTLAR tablosunda DURUM sütununa göre gruplandýrýr ve DURUM=0 olan öðrencilerin sayýsýný gösterir.
SELECT DURUM, COUNT(*) AS 'Kalanlar' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM = 0

-- TBLNOTLAR tablosunda DURUM sütununa göre gruplandýrýr ve DURUM=1 olan öðrencilerin sayýsýný gösterir.
SELECT DURUM, COUNT(*) AS 'Geçenler' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM = 1

-- TBLOGRENCÝLER tablosunda OGRAD veya OGRSOYAD sütununda 'a' harfi geçen kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD LIKE '%a%' OR OGRSOYAD LIKE '%a%'

-- TBLOGRENCÝLER tablosunda OGRAD sütununda 'a' harfi ile baþlayan ve OGRCÝNSÝYET='erkek' olan kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD LIKE 'a%' AND OGRCÝNSÝYET = 'erkek'

-- TBLOGRENCÝLER tablosunda OGRAD sütununda 'a' harfi ile baþlayan ve OGRCÝNSÝYET='Kýz' olan kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD LIKE 'a%' AND OGRCÝNSÝYET = 'Kýz'

-- TBLOGRENCÝLER tablosunda OGRSEHÝR sütununda 'ir' harflerini içeren kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRSEHÝR LIKE '%ir%'

-- TBLOGRENCÝLER tablosundaki tüm OGRSEHÝR deðerlerini gösterir.
SELECT OGRSEHÝR FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki benzersiz (tekrar etmeyen) OGRSEHÝR deðerlerini gösterir.
SELECT DISTINCT OGRSEHÝR FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki OGRSEHÝR deðerlerinin toplam sayýsýný hesaplar.
SELECT COUNT(OGRSEHÝR) FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki benzersiz OGRSEHÝR deðerlerinin sayýsýný hesaplar ve 'kulüp sayýsý' olarak gösterir.
SELECT COUNT(DISTINCT OGRSEHÝR) AS 'Kulüp Sayýsý' FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki tüm kayýtlarý OGRAD sütununa göre azalan sýralamada gösterir.
SELECT * FROM TBLOGRENCÝLER ORDER BY OGRAD DESC

-- TBLOGRENCÝLER tablosundaki tüm kayýtlarý OGRCÝNSÝYET sütununa göre azalan sýralamada gösterir.
SELECT * FROM TBLOGRENCÝLER ORDER BY OGRCÝNSÝYET DESC

-- TBLOGRENCÝLER tablosundaki benzersiz OGRSEHÝR deðerlerini OGRSEHÝR sütununa göre azalan sýralamada gösterir.
SELECT DISTINCT OGRSEHÝR FROM TBLOGRENCÝLER ORDER BY OGRSEHÝR DESC

-- TBLOGRENCÝLER tablosundaki ilk %20 kayýtlarý seçer.
SELECT TOP 20 PERCENT * FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki OGRSEHÝR sütununda 'an_' þeklinde biten kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRSEHÝR LIKE '%an_%'

-- TBLOGRENCÝLER tablosundaki OGRAD sütununda 'A' veya 'B' harflerini içeren kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD LIKE '%[A,B]%'

-- TBLOGRENCÝLER tablosundaki OGRAD sütununda yalnýzca 'A' veya 'B' harflerinin geçtiði kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD LIKE '%[A,B]'

-- TBLOGRENCÝLER tablosundaki ilk 4 kayýtlarý seçer.
SELECT TOP 4 * FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki ilk 4 kayýtlarý OGRID sütununa göre azalan sýralamada seçer.
SELECT TOP 4 * FROM TBLOGRENCÝLER ORDER BY OGRID DESC

-- TBLOGRENCÝLER tablosundaki ilk %41 kayýtlarý seçer.
SELECT TOP 41 PERCENT * FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosunda OGRSEHÝR='Ýzmir', OGRSEHÝR='Ankara' veya OGRSEHÝR='Adana' olan kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRSEHÝR = 'Ýzmir' OR OGRSEHÝR = 'Ankara' OR OGRSEHÝR = 'Adana'

-- TBLOGRENCÝLER tablosunda OGRSEHÝR sütununda 'Ýzmir', 'Ankara' veya 'Adana' deðerlerini içeren kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRSEHÝR IN ('Ýzmir', 'Ankara', 'Adana')

-- TBLNOTLAR tablosunda SINAV1 deðerleri 70, 75, 85 veya 90 olan kayýtlarý gösterir.
SELECT * FROM TBLNOTLAR WHERE SINAV1 IN (70, 75, 85, 90)

-- TBLNOTLAR tablosunda SINAV1 deðerleri 70, 75, 85 veya 90 olmayan kayýtlarý gösterir.
SELECT * FROM TBLNOTLAR WHERE SINAV1 NOT IN (70, 75, 85, 90)

-- TBLNOTLAR tablosunda ORTALAMA deðeri 74 ile 100 arasýnda olan kayýtlarý gösterir.
SELECT * FROM TBLNOTLAR WHERE ORTALAMA BETWEEN 74 AND 100

-- TBLOGRENCÝLER tablosunda OGRAD deðeri 'A' ile 'N' arasýnda (sondaki dahil deðil) olan kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD BETWEEN 'A' AND 'N'

-- TBLOGRENCÝLER tablosunda OGRAD deðeri 'A' ile 'N' arasýnda (sondaki dahil deðil) olmayan kayýtlarý gösterir.
SELECT * FROM TBLOGRENCÝLER WHERE OGRAD NOT BETWEEN 'A' AND 'N'

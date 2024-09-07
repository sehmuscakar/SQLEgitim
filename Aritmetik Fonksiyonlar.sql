-- 20 ile 4'ün toplamýný 'Toplam' olarak, farkýný 'Fark' olarak, çarpýmýný 'Çarpým' olarak ve bölümünü 'Bölüm' olarak gösterir.
SELECT 20 + 4 AS 'Toplam', 20 - 4 AS 'Fark', 20 * 4 AS 'Çarpým', 20 / 4 AS 'Bölüm'

-- TBLNOTLAR tablosunda DERS=1 olan kayýtlarý seçer.
SELECT * FROM TBLNOTLAR WHERE DERS = 1

-- TBLNOTLAR tablosunda DERS=1 olan kayýtlarýn SINAV2 deðerini 10 artýrýr.
UPDATE TBLNOTLAR SET SINAV2 = SINAV2 + 10 WHERE DERS = 1

-- Güncellenmiþ tüm kayýtlarý tekrar gösterir.
SELECT * FROM TBLNOTLAR

-- TBLNOTLAR tablosunda SINAV2 deðeri 100'den büyük olan kayýtlarýn SINAV2 deðerini 100 olarak günceller.
UPDATE TBLNOTLAR SET SINAV2 = 100 WHERE SINAV2 > 100

-- DERS=1 olan kayýtlarýn ORTALAMA deðerinin ortalamasýný hesaplar.
SELECT AVG(ORTALAMA) FROM TBLNOTLAR WHERE DERS = 1

-- -65 sayýsýnýn mutlak deðerini 'Mutlak' olarak gösterir.
SELECT ABS(-65) AS 'Mutlak'

-- 2'nin 4. kuvvetini ('üs alma') hesaplar ve 'Üs Alma' olarak gösterir.
SELECT POWER(2, 4) AS 'Üs Alma'

-- TBLNOTLAR tablosundaki her kaydýn SINAV1 deðerinin karesini hesaplar.
SELECT POWER(SINAV1, 2) FROM TBLNOTLAR

-- 81 sayýsýnýn karekökünü 'Karakök' olarak hesaplar ve gösterir.
SELECT SQRT(81) AS 'Karakök'

-- 4.56 sayýsýnýn taban (tam sayý kýsmý) ve tavan (en yakýn üst tam sayý) deðerlerini 'Taban' ve 'Tavan' olarak gösterir.
SELECT FLOOR(4.56) AS 'Taban', CEILING(4.56) AS 'Tavan'

-- OGRENCÝ=1 olan kayýtlarýn SINAV1 deðerlerinin toplamýný hesaplar.
SELECT SUM(SINAV1) FROM TBLNOTLAR WHERE OGRENCÝ = 1

-- OGRENCÝ=1 olan kayýtlarýn SINAV1 ve DERS deðerlerini gösterir.
SELECT SINAV1, DERS FROM TBLNOTLAR WHERE OGRENCÝ = 1

-- TBLNOTLAR ve TBLDERSLER tablolarýný birleþtirir, OGRENCÝ=1 olan kayýtlarýn DERSAD ve SINAV1 deðerlerini gösterir.
SELECT DERSAD, SINAV1 FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
WHERE OGRENCÝ = 1

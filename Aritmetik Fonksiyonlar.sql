-- 20 ile 4'�n toplam�n� 'Toplam' olarak, fark�n� 'Fark' olarak, �arp�m�n� '�arp�m' olarak ve b�l�m�n� 'B�l�m' olarak g�sterir.
SELECT 20 + 4 AS 'Toplam', 20 - 4 AS 'Fark', 20 * 4 AS '�arp�m', 20 / 4 AS 'B�l�m'

-- TBLNOTLAR tablosunda DERS=1 olan kay�tlar� se�er.
SELECT * FROM TBLNOTLAR WHERE DERS = 1

-- TBLNOTLAR tablosunda DERS=1 olan kay�tlar�n SINAV2 de�erini 10 art�r�r.
UPDATE TBLNOTLAR SET SINAV2 = SINAV2 + 10 WHERE DERS = 1

-- G�ncellenmi� t�m kay�tlar� tekrar g�sterir.
SELECT * FROM TBLNOTLAR

-- TBLNOTLAR tablosunda SINAV2 de�eri 100'den b�y�k olan kay�tlar�n SINAV2 de�erini 100 olarak g�nceller.
UPDATE TBLNOTLAR SET SINAV2 = 100 WHERE SINAV2 > 100

-- DERS=1 olan kay�tlar�n ORTALAMA de�erinin ortalamas�n� hesaplar.
SELECT AVG(ORTALAMA) FROM TBLNOTLAR WHERE DERS = 1

-- -65 say�s�n�n mutlak de�erini 'Mutlak' olarak g�sterir.
SELECT ABS(-65) AS 'Mutlak'

-- 2'nin 4. kuvvetini ('�s alma') hesaplar ve '�s Alma' olarak g�sterir.
SELECT POWER(2, 4) AS '�s Alma'

-- TBLNOTLAR tablosundaki her kayd�n SINAV1 de�erinin karesini hesaplar.
SELECT POWER(SINAV1, 2) FROM TBLNOTLAR

-- 81 say�s�n�n karek�k�n� 'Karak�k' olarak hesaplar ve g�sterir.
SELECT SQRT(81) AS 'Karak�k'

-- 4.56 say�s�n�n taban (tam say� k�sm�) ve tavan (en yak�n �st tam say�) de�erlerini 'Taban' ve 'Tavan' olarak g�sterir.
SELECT FLOOR(4.56) AS 'Taban', CEILING(4.56) AS 'Tavan'

-- OGRENC�=1 olan kay�tlar�n SINAV1 de�erlerinin toplam�n� hesaplar.
SELECT SUM(SINAV1) FROM TBLNOTLAR WHERE OGRENC� = 1

-- OGRENC�=1 olan kay�tlar�n SINAV1 ve DERS de�erlerini g�sterir.
SELECT SINAV1, DERS FROM TBLNOTLAR WHERE OGRENC� = 1

-- TBLNOTLAR ve TBLDERSLER tablolar�n� birle�tirir, OGRENC�=1 olan kay�tlar�n DERSAD ve SINAV1 de�erlerini g�sterir.
SELECT DERSAD, SINAV1 FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
WHERE OGRENC� = 1

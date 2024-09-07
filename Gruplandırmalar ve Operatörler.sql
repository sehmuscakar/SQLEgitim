-- TBLOGRENC�LER tablosundaki toplam ��renci say�s�n� hesaplar.
SELECT COUNT(*) FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki toplam ��renci say�s�n� 'Toplam Kay�t Say�s�' olarak g�sterir.
SELECT COUNT(*) AS 'Toplam Kay�t Say�s�' FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosunda OGRSEH�R= 'Adana' olan ��renci say�s�n� hesaplar.
SELECT COUNT(*) AS 'Toplam Ki�i' FROM TBLOGRENC�LER WHERE OGRSEH�R = 'Adana'

-- TBLNOTLAR tablosundaki SINAV1 de�erlerinin toplam�n� hesaplar.
SELECT SUM(SINAV1) AS 'Toplam' FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin toplam�n� hesaplar ve 'Toplam' olarak g�sterir.
SELECT SUM(SINAV1), SUM(SINAV2), SUM(SINAV3) AS 'Toplam' FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1 de�erlerinin ortalamas�n� hesaplar.
SELECT AVG(SINAV1) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin ortalamalar�n� hesaplar.
SELECT AVG(SINAV1), AVG(SINAV2), AVG(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1 de�erlerinin en y�ksek de�erini bulur.
SELECT MAX(SINAV1) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin en y�kseklerini bulur.
SELECT MAX(SINAV1), MAX(SINAV2), MAX(SINAV3) FROM TBLNOTLAR

------------------

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin toplamlar�n� hesaplar.
SELECT SUM(SINAV1), SUM(SINAV2), SUM(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin ortalamalar�n� hesaplar.
SELECT AVG(SINAV1), AVG(SINAV2), AVG(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin en y�kseklerini bulur.
SELECT MAX(SINAV1), MAX(SINAV2), MAX(SINAV3) FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki SINAV1, SINAV2 ve SINAV3 de�erlerinin en d���klerini bulur.
SELECT MIN(SINAV1), MIN(SINAV2), MIN(SINAV3) FROM TBLNOTLAR

-------------------------------------------------

-- TBLOGRENC�LER tablosunda OGRSEH�R s�tununa g�re grupland�r�r ve her �ehirdeki ��renci say�s�n� g�sterir.
SELECT OGRSEH�R, COUNT(*) FROM TBLOGRENC�LER GROUP BY OGRSEH�R

-- TBLOGRENC�LER tablosunda OGRC�NS�YET s�tununa g�re grupland�r�r ve her cinsiyetteki ��renci say�s�n� g�sterir.
SELECT OGRC�NS�YET, COUNT(*) FROM TBLOGRENC�LER GROUP BY OGRC�NS�YET

-- TBLOGRENC�LER tablosundaki OGRC�NS�YET s�tununda NULL olan kay�tlar� 'Erkek' olarak g�nceller.
UPDATE TBLOGRENC�LER SET OGRC�NS�YET = 'Erkek' WHERE OGRC�NS�YET IS NULL

-- TBLNOTLAR tablosunda DURUM=1 olan kay�tlar� grupland�r�r ve her ��renci i�in ge�en ��renci say�s�n� g�sterir.
SELECT OGRENC�, COUNT(*) AS 'Ge�en ��renciler Say�s�' FROM TBLNOTLAR WHERE DURUM = 1 GROUP BY OGRENC�

-- TBLOGRENC�LER tablosunda OGRKULUP s�tununa g�re grupland�r�r ve her kul�pteki ��renci say�s�n� g�sterir.
SELECT OGRKULUP, COUNT(*) AS 'Kul�p Ki�i Say�lar�' FROM TBLOGRENC�LER GROUP BY OGRKULUP

-- TBLOGRENC�LER tablosunda OGRAD='Ali' olan kay�tlar� OGRKULUP s�tununa g�re grupland�r�r ve her gruptaki ��renci say�s�n� g�sterir.
SELECT OGRKULUP, COUNT(*) FROM TBLOGRENC�LER WHERE OGRAD = 'Ali' GROUP BY OGRKULUP

-- TBLOGRENC�LER tablosunda OGRSEH�R s�tununa g�re grupland�r�r ve yaln�zca ��renci say�s� 2 olan �ehirleri g�sterir.
SELECT OGRSEH�R, COUNT(*) AS 'Say�' FROM TBLOGRENC�LER GROUP BY OGRSEH�R HAVING COUNT(*) = 2

-- TBLOGRENC�LER tablosunda OGRKULUP s�tununa g�re grupland�r�r ve OGRKULUP='Kitapl�k' olan gruptaki ��renci say�s�n� g�sterir.
SELECT OGRKULUP, COUNT(*) AS 'Say�' FROM TBLOGRENC�LER GROUP BY OGRKULUP HAVING OGRKULUP = 'Kitapl�k'

-- TBLNOTLAR tablosunda DURUM s�tununa g�re grupland�r�r ve DURUM=0 olan ��rencilerin say�s�n� g�sterir.
SELECT DURUM, COUNT(*) AS 'Kalanlar' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM = 0

-- TBLNOTLAR tablosunda DURUM s�tununa g�re grupland�r�r ve DURUM=1 olan ��rencilerin say�s�n� g�sterir.
SELECT DURUM, COUNT(*) AS 'Ge�enler' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM = 1

-- TBLOGRENC�LER tablosunda OGRAD veya OGRSOYAD s�tununda 'a' harfi ge�en kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD LIKE '%a%' OR OGRSOYAD LIKE '%a%'

-- TBLOGRENC�LER tablosunda OGRAD s�tununda 'a' harfi ile ba�layan ve OGRC�NS�YET='erkek' olan kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD LIKE 'a%' AND OGRC�NS�YET = 'erkek'

-- TBLOGRENC�LER tablosunda OGRAD s�tununda 'a' harfi ile ba�layan ve OGRC�NS�YET='K�z' olan kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD LIKE 'a%' AND OGRC�NS�YET = 'K�z'

-- TBLOGRENC�LER tablosunda OGRSEH�R s�tununda 'ir' harflerini i�eren kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRSEH�R LIKE '%ir%'

-- TBLOGRENC�LER tablosundaki t�m OGRSEH�R de�erlerini g�sterir.
SELECT OGRSEH�R FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki benzersiz (tekrar etmeyen) OGRSEH�R de�erlerini g�sterir.
SELECT DISTINCT OGRSEH�R FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki OGRSEH�R de�erlerinin toplam say�s�n� hesaplar.
SELECT COUNT(OGRSEH�R) FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki benzersiz OGRSEH�R de�erlerinin say�s�n� hesaplar ve 'kul�p say�s�' olarak g�sterir.
SELECT COUNT(DISTINCT OGRSEH�R) AS 'Kul�p Say�s�' FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki t�m kay�tlar� OGRAD s�tununa g�re azalan s�ralamada g�sterir.
SELECT * FROM TBLOGRENC�LER ORDER BY OGRAD DESC

-- TBLOGRENC�LER tablosundaki t�m kay�tlar� OGRC�NS�YET s�tununa g�re azalan s�ralamada g�sterir.
SELECT * FROM TBLOGRENC�LER ORDER BY OGRC�NS�YET DESC

-- TBLOGRENC�LER tablosundaki benzersiz OGRSEH�R de�erlerini OGRSEH�R s�tununa g�re azalan s�ralamada g�sterir.
SELECT DISTINCT OGRSEH�R FROM TBLOGRENC�LER ORDER BY OGRSEH�R DESC

-- TBLOGRENC�LER tablosundaki ilk %20 kay�tlar� se�er.
SELECT TOP 20 PERCENT * FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki OGRSEH�R s�tununda 'an_' �eklinde biten kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRSEH�R LIKE '%an_%'

-- TBLOGRENC�LER tablosundaki OGRAD s�tununda 'A' veya 'B' harflerini i�eren kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD LIKE '%[A,B]%'

-- TBLOGRENC�LER tablosundaki OGRAD s�tununda yaln�zca 'A' veya 'B' harflerinin ge�ti�i kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD LIKE '%[A,B]'

-- TBLOGRENC�LER tablosundaki ilk 4 kay�tlar� se�er.
SELECT TOP 4 * FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki ilk 4 kay�tlar� OGRID s�tununa g�re azalan s�ralamada se�er.
SELECT TOP 4 * FROM TBLOGRENC�LER ORDER BY OGRID DESC

-- TBLOGRENC�LER tablosundaki ilk %41 kay�tlar� se�er.
SELECT TOP 41 PERCENT * FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosunda OGRSEH�R='�zmir', OGRSEH�R='Ankara' veya OGRSEH�R='Adana' olan kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRSEH�R = '�zmir' OR OGRSEH�R = 'Ankara' OR OGRSEH�R = 'Adana'

-- TBLOGRENC�LER tablosunda OGRSEH�R s�tununda '�zmir', 'Ankara' veya 'Adana' de�erlerini i�eren kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRSEH�R IN ('�zmir', 'Ankara', 'Adana')

-- TBLNOTLAR tablosunda SINAV1 de�erleri 70, 75, 85 veya 90 olan kay�tlar� g�sterir.
SELECT * FROM TBLNOTLAR WHERE SINAV1 IN (70, 75, 85, 90)

-- TBLNOTLAR tablosunda SINAV1 de�erleri 70, 75, 85 veya 90 olmayan kay�tlar� g�sterir.
SELECT * FROM TBLNOTLAR WHERE SINAV1 NOT IN (70, 75, 85, 90)

-- TBLNOTLAR tablosunda ORTALAMA de�eri 74 ile 100 aras�nda olan kay�tlar� g�sterir.
SELECT * FROM TBLNOTLAR WHERE ORTALAMA BETWEEN 74 AND 100

-- TBLOGRENC�LER tablosunda OGRAD de�eri 'A' ile 'N' aras�nda (sondaki dahil de�il) olan kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD BETWEEN 'A' AND 'N'

-- TBLOGRENC�LER tablosunda OGRAD de�eri 'A' ile 'N' aras�nda (sondaki dahil de�il) olmayan kay�tlar� g�sterir.
SELECT * FROM TBLOGRENC�LER WHERE OGRAD NOT BETWEEN 'A' AND 'N'

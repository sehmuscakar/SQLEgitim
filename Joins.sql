-- TBLOGRENC�LER tablosundaki OGRKULUP s�tununda 'Gezi' olan kay�tlar� '4' ile g�nceller.
UPDATE TBLOGRENC�LER SET OGRKULUP = 4 WHERE OGRKULUP = 'Gezi'

-- TBLOGRENC�LER tablosuna yeni bir ��renci ekler: OGRAD='�ehmus', OGRKULUP=4, OGRSEH�R='Batman'
INSERT INTO TBLOGRENC�LER (OGRAD, OGRKULUP, OGRSEH�R) VALUES ('�ehmus', 4, 'Batman')

-- TBLNOTLAR tablosundaki s�nav notlar�n� ve ders adlar�n� TBLDERSLER tablos�yla birle�tirerek se�er.
SELECT NOTID, DERSAD, SINAV1, SINAV2, SINAV3, ORTALAMA, DURUM
FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID

-- TBLNOTLAR tablosundaki s�nav notlar�n�, ders adlar�n� ve ��renci bilgilerini TBLOGRENC�LER tablosuyla birle�tirerek se�er.
SELECT NOTID, OGRAD + ' ' + OGRSOYAD AS 'ad soyad', DERSAD, SINAV1, SINAV2, SINAV3, ORTALAMA, DURUM
FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
INNER JOIN TBLOGRENC�LER ON TBLOGRENC�LER.OGRID = TBLNOTLAR.OGRENC�

-- TBLNOTLAR tablosundaki t�m kay�tlar� se�er.
SELECT * FROM TBLNOTLAR

-- TBLNOTLAR tablosundaki s�nav notlar� ve dersler i�in ORTALAMA s�tununu, SINAV1, SINAV2 ve SINAV3'�n ortalamas� olarak g�nceller.
UPDATE TBLNOTLAR SET ORTALAMA = (SINAV1 + SINAV2 + SINAV3) / 3 WHERE DERS = 1

-- TBLNOTLAR tablosundaki ORTALAMA de�eri 50 veya daha b�y�k olan kay�tlar�n DURUM s�tununu '1' olarak g�nceller.
UPDATE TBLNOTLAR SET DURUM = 1 WHERE ORTALAMA >= 50

-- TBLNOTLAR tablosundaki ORTALAMA de�eri 50 veya daha k���k olan kay�tlar�n DURUM s�tununu '0' olarak g�nceller.
UPDATE TBLNOTLAR SET DURUM = 0 WHERE ORTALAMA < 50

-- TBLDERSLER tablosundaki 'Matamatik' dersine ait s�nav not bilgilerini se�er. DERSAD='Matamatik' olan dersin ID'sini alt sorgu olarak kullan�r.
SELECT * FROM TBLNOTLAR WHERE DERS = (SELECT DERSID FROM TBLDERSLER WHERE DERSAD = 'Matamatik')

-- TBLNOTLAR tablosunu sol d�� birle�tirme (LEFT JOIN) kullanarak TBLOGRENC�LER tablosu ile birle�tirir. TBLNOTLAR'daki t�m kay�tlar� ve TBLOGRENC�LER'deki e�le�en kay�tlar� g�sterir.
SELECT * FROM TBLNOTLAR
LEFT JOIN TBLOGRENC�LER ON TBLNOTLAR.OGRENC� = TBLOGRENC�LER.OGRID

-- TBLNOTLAR tablosunu sa� d�� birle�tirme (RIGHT JOIN) kullanarak TBLOGRENC�LER tablosu ile birle�tirir. TBLOGRENC�LER'deki t�m kay�tlar� ve TBLNOTLAR'daki e�le�en kay�tlar� g�sterir.
SELECT * FROM TBLNOTLAR
RIGHT JOIN TBLOGRENC�LER ON TBLNOTLAR.OGRENC� = TBLOGRENC�LER.OGRID

-- TBLNOTLAR tablosunu tam d�� birle�tirme (FULL JOIN) kullanarak TBLOGRENC�LER tablosu ile birle�tirir. Her iki tablodaki t�m kay�tlar�, e�le�en kay�tlar varsa bunlar� g�sterir.
SELECT * FROM TBLNOTLAR
FULL JOIN TBLOGRENC�LER ON TBLNOTLAR.OGRENC� = TBLOGRENC�LER.OGRID

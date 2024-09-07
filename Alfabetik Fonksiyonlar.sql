-- 'merhaba' kelimesini b�y�k harfe �evirir ve 'S�t�n' ad�nda bir s�tun olarak sonu�lar� g�sterir.
SELECT UPPER('merhaba') AS 'S�t�n'

-- TBLOGRENC�LER tablosundaki ��renci ad�n� b�y�k harfe �evirir, soyad�n� b�y�k harfe �evirir ve �ehir ad�n� k���k harfe �evirir. S�tun adlar�n� belirler.
SELECT UPPER(OGRAD) AS '��renci Ad�', UPPER(OGRSOYAD) AS 'SOYAD', LOWER(OGRSEH�R) AS '�EH�R' FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosunda �ehir ad� 'aDANA' olan ve OGRKULUP=2 olan kay�tlar� se�er.
SELECT * FROM TBLOGRENC�LER WHERE OGRSEH�R='aDANA' AND OGRKULUP=2

-- TBLOGRENC�LER tablosundaki OGRAD s�tununun 3. karakterinden ba�layarak 2 karakteri se�er.
SELECT SUBSTRING(OGRAD, 3, 2) FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki OGRAD s�tununun 1. karakterinden ba�layarak 2 karakteri al�r ve sonuna nokta ekler.
SELECT SUBSTRING(OGRAD, 1, 2) + '.' FROM TBLOGRENC�LER

-- TBLOGRENC�LER tablosundaki OGRAD s�tununun 1. karakterinden ba�layarak 1 karakteri al�r ve sonuna OGRSOYAD s�tununu ekler.
SELECT SUBSTRING(OGRAD, 1, 1) + '.' + OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENC�LER

-- 'Merhaba D�nya' metninin ilk 9 karakterini al�r.
SELECT LEFT('Merhaba D�nya', 9)

-- 'Merhaba D�nya' metninin son 9 karakterini al�r.
SELECT RIGHT('Merhaba D�nya', 9)

-- TBLOGRENC�LER tablosundaki OGRAD s�tununun ilk karakterini al�r, sonuna nokta ekler ve ard�ndan OGRSOYAD s�tununu ekler.
SELECT LEFT(OGRAD, 1) + '.' + OGRSOYAD AS 'Ad soyad' FROM TBLOGRENC�LER

-- TBLNOTLAR tablosundaki her bir ders i�in ortalama notlar� hesaplar ve 'derslerin ortalamas�' olarak adland�r�r.
SELECT Ders, AVG(ORTALAMA) 'derslerin ortalamas�' FROM TBLNOTLAR GROUP BY DERS

-- TBLNOTLAR ve TBLDERSLER tablosunu birle�tirir, ders adlar�n� ve ortalama notlar� hesaplar.
SELECT DERSAD, AVG(ORTALAMA) FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
GROUP BY DERSAD

-- TBLNOTLAR ve TBLDERSLER tablosunu birle�tirir, ders adlar�n�n ilk 3 karakterini al�r ve ortalama notlar� hesaplar.
SELECT LEFT(DERSAD, 3), AVG(ORTALAMA) FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
GROUP BY DERSAD

-- TBLOGRENC�LER tablosundaki OGRAD s�tununun karakter uzunlu�unu hesaplar ve 'karekter uzunlu�u' olarak adland�r�r.
SELECT OGRAD, LEN(OGRAD) 'karekter uzunlu�u' FROM TBLOGRENC�LER

-- OGRAD s�tununun uzunlu�u 4 veya 3 olan kay�tlar� se�er.
SELECT * FROM TBLOGRENC�LER WHERE LEN(OGRAD) = 4 OR LEN(OGRAD) = 3

-- '      batman g�zel bir �ehir      ' metninin ba��ndaki bo�luklar� temizler.
SELECT LTRIM('      batman g�zel bir �ehir      ')

-- '      batman g�zel bir �ehir      ' metninin sonundaki bo�luklar� temizler.
SELECT RTRIM('      batman g�zel bir �ehir      ')

-- 'Murat Yuceda�' metnindeki 'Yuceda�' k�sm�n� 'y. da�' ile de�i�tirir.
SELECT REPLACE('Murat Yuceda�', 'Yuceda�', 'y. da�')

-- 'SQL derslerine' metninde 20. karakterden itibaren 'e' harfinin konumunu bulur. E�er 20. karakterden sonra 'e' harfi bulunmazsa, 0 d�ner.
SELECT CHARINDEX('e', 'SQL derslerine', 20)

-- TBLOGRENC�LER tablosundaki OGRAD s�tununda 'a' harfinin konumunu bulur.
SELECT CHARINDEX('a', OGRAD) FROM TBLOGRENC�LER

-- 'SQL Derslerine Devam Ediyoruz' metninin karakter uzunlu�unu hesaplar.
SELECT LEN('SQL Derslerine Devam Ediyoruz')

-- 'Murat' metnini ters �evirir (yani 'turaM' olarak g�sterir).
SELECT REVERSE('Murat')

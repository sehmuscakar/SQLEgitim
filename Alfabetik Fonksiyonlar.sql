-- 'merhaba' kelimesini büyük harfe çevirir ve 'Sütün' adýnda bir sütun olarak sonuçlarý gösterir.
SELECT UPPER('merhaba') AS 'Sütün'

-- TBLOGRENCÝLER tablosundaki öðrenci adýný büyük harfe çevirir, soyadýný büyük harfe çevirir ve þehir adýný küçük harfe çevirir. Sütun adlarýný belirler.
SELECT UPPER(OGRAD) AS 'Öðrenci Adý', UPPER(OGRSOYAD) AS 'SOYAD', LOWER(OGRSEHÝR) AS 'ÞEHÝR' FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosunda þehir adý 'aDANA' olan ve OGRKULUP=2 olan kayýtlarý seçer.
SELECT * FROM TBLOGRENCÝLER WHERE OGRSEHÝR='aDANA' AND OGRKULUP=2

-- TBLOGRENCÝLER tablosundaki OGRAD sütununun 3. karakterinden baþlayarak 2 karakteri seçer.
SELECT SUBSTRING(OGRAD, 3, 2) FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki OGRAD sütununun 1. karakterinden baþlayarak 2 karakteri alýr ve sonuna nokta ekler.
SELECT SUBSTRING(OGRAD, 1, 2) + '.' FROM TBLOGRENCÝLER

-- TBLOGRENCÝLER tablosundaki OGRAD sütununun 1. karakterinden baþlayarak 1 karakteri alýr ve sonuna OGRSOYAD sütununu ekler.
SELECT SUBSTRING(OGRAD, 1, 1) + '.' + OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENCÝLER

-- 'Merhaba Dünya' metninin ilk 9 karakterini alýr.
SELECT LEFT('Merhaba Dünya', 9)

-- 'Merhaba Dünya' metninin son 9 karakterini alýr.
SELECT RIGHT('Merhaba Dünya', 9)

-- TBLOGRENCÝLER tablosundaki OGRAD sütununun ilk karakterini alýr, sonuna nokta ekler ve ardýndan OGRSOYAD sütununu ekler.
SELECT LEFT(OGRAD, 1) + '.' + OGRSOYAD AS 'Ad soyad' FROM TBLOGRENCÝLER

-- TBLNOTLAR tablosundaki her bir ders için ortalama notlarý hesaplar ve 'derslerin ortalamasý' olarak adlandýrýr.
SELECT Ders, AVG(ORTALAMA) 'derslerin ortalamasý' FROM TBLNOTLAR GROUP BY DERS

-- TBLNOTLAR ve TBLDERSLER tablosunu birleþtirir, ders adlarýný ve ortalama notlarý hesaplar.
SELECT DERSAD, AVG(ORTALAMA) FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
GROUP BY DERSAD

-- TBLNOTLAR ve TBLDERSLER tablosunu birleþtirir, ders adlarýnýn ilk 3 karakterini alýr ve ortalama notlarý hesaplar.
SELECT LEFT(DERSAD, 3), AVG(ORTALAMA) FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
GROUP BY DERSAD

-- TBLOGRENCÝLER tablosundaki OGRAD sütununun karakter uzunluðunu hesaplar ve 'karekter uzunluðu' olarak adlandýrýr.
SELECT OGRAD, LEN(OGRAD) 'karekter uzunluðu' FROM TBLOGRENCÝLER

-- OGRAD sütununun uzunluðu 4 veya 3 olan kayýtlarý seçer.
SELECT * FROM TBLOGRENCÝLER WHERE LEN(OGRAD) = 4 OR LEN(OGRAD) = 3

-- '      batman güzel bir þehir      ' metninin baþýndaki boþluklarý temizler.
SELECT LTRIM('      batman güzel bir þehir      ')

-- '      batman güzel bir þehir      ' metninin sonundaki boþluklarý temizler.
SELECT RTRIM('      batman güzel bir þehir      ')

-- 'Murat Yucedað' metnindeki 'Yucedað' kýsmýný 'y. dað' ile deðiþtirir.
SELECT REPLACE('Murat Yucedað', 'Yucedað', 'y. dað')

-- 'SQL derslerine' metninde 20. karakterden itibaren 'e' harfinin konumunu bulur. Eðer 20. karakterden sonra 'e' harfi bulunmazsa, 0 döner.
SELECT CHARINDEX('e', 'SQL derslerine', 20)

-- TBLOGRENCÝLER tablosundaki OGRAD sütununda 'a' harfinin konumunu bulur.
SELECT CHARINDEX('a', OGRAD) FROM TBLOGRENCÝLER

-- 'SQL Derslerine Devam Ediyoruz' metninin karakter uzunluðunu hesaplar.
SELECT LEN('SQL Derslerine Devam Ediyoruz')

-- 'Murat' metnini ters çevirir (yani 'turaM' olarak gösterir).
SELECT REVERSE('Murat')

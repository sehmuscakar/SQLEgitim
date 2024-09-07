Select count(*) from TBLOGRENCÝLER -- ÖÐRENCÝLER TABLOSUNU ÝÇÝNDEKÝ ÖÐRENCÝLERÝ sayýyor
Select count(*) as 'Toplam Kayýt Sayýsý' from TBLOGRENCÝLER

select count(*) as 'Toplam Kiþi' from TBLOGRENCÝLER where OGRSEHÝR='Adana' --adanadaki toplam kiþi sayýsýný 

select sum(Sýnav1) as 'Toplam' from TBLNOTLAR 

select sum(Sýnav1),sum(SINAV2),SUM(SINAV3) as 'Toplam' from TBLNOTLAR 

select AVG(SINAV1) FROM TBLNOTLAR

select AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR -- sýnavlarýn ortalamalaýrný bulyor

select max(SINAV1) from TBLNOTLAR -- en yükseðini buluyor 

select max(SINAV1),max(SINAV2),max(SINAV3) from TBLNOTLAR -- en yüksekleri buluyor 
------------------
select sum(Sýnav1),sum(SINAV2),SUM(SINAV3) from TBLNOTLAR 
select AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR 
select max(SINAV1),max(SINAV2),max(SINAV3) from TBLNOTLAR 
select min(SINAV1),min(SINAV2),min(SINAV3) from TBLNOTLAR 

-------------------------------------------------
select OGRSEHÝR,count(*) from TBLOGRENCÝLER Group BY OGRSEHÝR -- bunu adanadaki kiþileri saydýk
select OGRCÝNSÝYET,count(*) from TBLOGRENCÝLER Group BY OGRCÝNSÝYET -- kaçtane öðrenci ve kaçtane erkek onlarý bulmana yardýmcý oldu

update TBLOGRENCÝLER set OGRCÝNSÝYET='Erkek' where OGRCÝNSÝYET IS NULL -- burda null olanlarý erkek yaptýk

select OGRENCÝ,COUNT(*) AS 'geçen öðrenciler sayýsý' from TBLNOTLAR where DURUM=1 Group BY OGRENCÝ

select OGRKULUP,count(*) as 'kulup kiþi sayýlarý'from TBLOGRENCÝLER  group by OGRKULUP 
select OGRKULUP,count(*) from TBLOGRENCÝLER where OGRAD='Ali' group by OGRKULUP 

select OGRSEHÝR,count(*) As 'Sayý' from TBLOGRENCÝLER group by OGRSEHÝR having count(*)=2

select OGRKULUP,count(*) As 'Sayý' from TBLOGRENCÝLER group by OGRKULUP having OGRKULUP='Kitaplýk' -- havin ile grubun içinde seçiyorsun aslýnda

SELECT DURUM, COUNT (*) AS 'KALANLAR 'FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=0

SELECT DURUM, COUNT(*) AS 'GEÇENLER' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=1

select * from TBLOGRENCÝLER where OGRAD like '%a%' or OGRSOYAD like '%a%'

select * from TBLOGRENCÝLER where OGRAD like 'a%' and OGRCÝNSÝYET='erkek'

select * from TBLOGRENCÝLER where OGRAD like 'a%' and OGRCÝNSÝYET='Kýz'

select * from  TBLOGRENCÝLER where OGRSEHÝR like '%ir%'

select OGRSEHÝR from TBLOGRENCÝLER

select DISTINCT OGRSEHÝR from TBLOGRENCÝLER

SELECT Count(OGRSEHÝR) from TBLOGRENCÝLER

SELECT Count(DISTINCT(OGRSEHÝR)) as'külüp sayýsý' from TBLOGRENCÝLER

select * from TBLOGRENCÝLER order by OGRAD desc

select * from TBLOGRENCÝLER order by OGRCÝNSÝYET desc

select distinct(OGRSEHÝR) from TBLOGRENCÝLER order by OGRSEHÝR desc

select top 20 percent * from TBLOGRENCÝLER

SELECT * FROM TBLOGRENCÝLER where OGRSEHÝR like '%an_%'

SELECT * FROM TBLOGRENCÝLER where OGRAD like '%[A,B]%'

SELECT * FROM TBLOGRENCÝLER where OGRAD like '%[A,B]'

SELECT top 4 * from TBLOGRENCÝLER

SELECT top 4 * from TBLOGRENCÝLER order by OGRID desc

SELECT top 41 percent * from TBLOGRENCÝLER

select * from TBLOGRENCÝLER where OGRSEHÝR='Ýzmir' or OGRSEHÝR='Ankara' or OGRSEHÝR='Adana'

select * from TBLOGRENCÝLER where OGRSEHÝR in('Ýzmir','Ankara','Adana')

select * from TBLNOTLAR where SINAV1 in (70,75,85,90)

select * from TBLNOTLAR where SINAV1 not in (70,75,85,90)

select * from TBLNOTLAR where ORTALAMA between 74 and 100 

select * from TBLNOTLAR where ORTALAMA between 74 and 100 

select * from TBLOGRENCÝLER where OGRAD between 'A' and 'N' -- sondaki dahil deðil 

select * from TBLOGRENCÝLER where OGRAD not between 'A' and 'N' -- sondaki dahil deðil 
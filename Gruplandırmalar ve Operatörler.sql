Select count(*) from TBLOGRENC�LER -- ��RENC�LER TABLOSUNU ���NDEK� ��RENC�LER� say�yor
Select count(*) as 'Toplam Kay�t Say�s�' from TBLOGRENC�LER

select count(*) as 'Toplam Ki�i' from TBLOGRENC�LER where OGRSEH�R='Adana' --adanadaki toplam ki�i say�s�n� 

select sum(S�nav1) as 'Toplam' from TBLNOTLAR 

select sum(S�nav1),sum(SINAV2),SUM(SINAV3) as 'Toplam' from TBLNOTLAR 

select AVG(SINAV1) FROM TBLNOTLAR

select AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR -- s�navlar�n ortalamala�rn� bulyor

select max(SINAV1) from TBLNOTLAR -- en y�kse�ini buluyor 

select max(SINAV1),max(SINAV2),max(SINAV3) from TBLNOTLAR -- en y�ksekleri buluyor 
------------------
select sum(S�nav1),sum(SINAV2),SUM(SINAV3) from TBLNOTLAR 
select AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR 
select max(SINAV1),max(SINAV2),max(SINAV3) from TBLNOTLAR 
select min(SINAV1),min(SINAV2),min(SINAV3) from TBLNOTLAR 

-------------------------------------------------
select OGRSEH�R,count(*) from TBLOGRENC�LER Group BY OGRSEH�R -- bunu adanadaki ki�ileri sayd�k
select OGRC�NS�YET,count(*) from TBLOGRENC�LER Group BY OGRC�NS�YET -- ka�tane ��renci ve ka�tane erkek onlar� bulmana yard�mc� oldu

update TBLOGRENC�LER set OGRC�NS�YET='Erkek' where OGRC�NS�YET IS NULL -- burda null olanlar� erkek yapt�k

select OGRENC�,COUNT(*) AS 'ge�en ��renciler say�s�' from TBLNOTLAR where DURUM=1 Group BY OGRENC�

select OGRKULUP,count(*) as 'kulup ki�i say�lar�'from TBLOGRENC�LER  group by OGRKULUP 
select OGRKULUP,count(*) from TBLOGRENC�LER where OGRAD='Ali' group by OGRKULUP 

select OGRSEH�R,count(*) As 'Say�' from TBLOGRENC�LER group by OGRSEH�R having count(*)=2

select OGRKULUP,count(*) As 'Say�' from TBLOGRENC�LER group by OGRKULUP having OGRKULUP='Kitapl�k' -- havin ile grubun i�inde se�iyorsun asl�nda

SELECT DURUM, COUNT (*) AS 'KALANLAR 'FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=0

SELECT DURUM, COUNT(*) AS 'GE�ENLER' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM=1

select * from TBLOGRENC�LER where OGRAD like '%a%' or OGRSOYAD like '%a%'

select * from TBLOGRENC�LER where OGRAD like 'a%' and OGRC�NS�YET='erkek'

select * from TBLOGRENC�LER where OGRAD like 'a%' and OGRC�NS�YET='K�z'

select * from  TBLOGRENC�LER where OGRSEH�R like '%ir%'

select OGRSEH�R from TBLOGRENC�LER

select DISTINCT OGRSEH�R from TBLOGRENC�LER

SELECT Count(OGRSEH�R) from TBLOGRENC�LER

SELECT Count(DISTINCT(OGRSEH�R)) as'k�l�p say�s�' from TBLOGRENC�LER

select * from TBLOGRENC�LER order by OGRAD desc

select * from TBLOGRENC�LER order by OGRC�NS�YET desc

select distinct(OGRSEH�R) from TBLOGRENC�LER order by OGRSEH�R desc

select top 20 percent * from TBLOGRENC�LER

SELECT * FROM TBLOGRENC�LER where OGRSEH�R like '%an_%'

SELECT * FROM TBLOGRENC�LER where OGRAD like '%[A,B]%'

SELECT * FROM TBLOGRENC�LER where OGRAD like '%[A,B]'

SELECT top 4 * from TBLOGRENC�LER

SELECT top 4 * from TBLOGRENC�LER order by OGRID desc

SELECT top 41 percent * from TBLOGRENC�LER

select * from TBLOGRENC�LER where OGRSEH�R='�zmir' or OGRSEH�R='Ankara' or OGRSEH�R='Adana'

select * from TBLOGRENC�LER where OGRSEH�R in('�zmir','Ankara','Adana')

select * from TBLNOTLAR where SINAV1 in (70,75,85,90)

select * from TBLNOTLAR where SINAV1 not in (70,75,85,90)

select * from TBLNOTLAR where ORTALAMA between 74 and 100 

select * from TBLNOTLAR where ORTALAMA between 74 and 100 

select * from TBLOGRENC�LER where OGRAD between 'A' and 'N' -- sondaki dahil de�il 

select * from TBLOGRENC�LER where OGRAD not between 'A' and 'N' -- sondaki dahil de�il 
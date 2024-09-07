select UPPER('merhaba') as 'Sütün'


 select UPPER(OGRAD) as 'Öðrenci Adý', UPPER(OGRSOYAD) AS 'SOYAD' , LOWER(OGRSEHÝR) AS 'ÞEHÝR' from TBLOGRENCÝLER

 SELECT * FROM TBLOGRENCÝLER WHERE OGRSEHÝR='aDANA' AND OGRKULUP=2

 SELECT SUBSTRING(OGRAD,3,2) FROM TBLOGRENCÝLER

 SELECT SUBSTRING(OGRAD,1,2) +'.' FROM TBLOGRENCÝLER

  SELECT SUBSTRING(OGRAD,1,1) +'.'+OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENCÝLER

  SELECT LEFT ('Merhaba Dünya',9)
  SELECT Right ('Merhaba Dünya',9)

  select LEFT (OGRAD,1)+'.'+OGRSOYAD as 'Ad soyad' from TBLOGRENCÝLER

  select Ders,AVG(ORTALAMA) 'derslerin ortalamasý' from TBLNOTLAR Group by DERS

  select DERSAD,AVG(ORTALAMA)  from TBLNOTLAR
  INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS=TBLDERSLER.DERSID
  Group by DERSAD

  select LEFT(DERSAD,3),AVG(ORTALAMA)  from TBLNOTLAR
  INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS=TBLDERSLER.DERSID
  Group by DERSAD

  SELECT OGRAD,LEN(OGRAD) 'karekter uzunluðu' FROM TBLOGRENCÝLER 

  select * from TBLOGRENCÝLER where LEN (OGRAD)=4 or len(OGRAD)=3

  select ltrim ('      batman güzel bir þehir      ')
  select rtrim ('      batman güzel bir þehir      ')

  select REPLACE ('Murat Yucedað','Yucedað','y. dað')
  select CHARINDEX('e','SQL derslerine',20)

  select CHARINDEX('a',OGRAD) from TBLOGRENCÝLER

  select len('SQL Dersleine Devam Ediyoruz')

  select REVERSE ('Murat')
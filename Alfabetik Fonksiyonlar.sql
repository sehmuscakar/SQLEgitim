select UPPER('merhaba') as 'S�t�n'


 select UPPER(OGRAD) as '��renci Ad�', UPPER(OGRSOYAD) AS 'SOYAD' , LOWER(OGRSEH�R) AS '�EH�R' from TBLOGRENC�LER

 SELECT * FROM TBLOGRENC�LER WHERE OGRSEH�R='aDANA' AND OGRKULUP=2

 SELECT SUBSTRING(OGRAD,3,2) FROM TBLOGRENC�LER

 SELECT SUBSTRING(OGRAD,1,2) +'.' FROM TBLOGRENC�LER

  SELECT SUBSTRING(OGRAD,1,1) +'.'+OGRSOYAD AS 'AD SOYAD' FROM TBLOGRENC�LER

  SELECT LEFT ('Merhaba D�nya',9)
  SELECT Right ('Merhaba D�nya',9)

  select LEFT (OGRAD,1)+'.'+OGRSOYAD as 'Ad soyad' from TBLOGRENC�LER

  select Ders,AVG(ORTALAMA) 'derslerin ortalamas�' from TBLNOTLAR Group by DERS

  select DERSAD,AVG(ORTALAMA)  from TBLNOTLAR
  INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS=TBLDERSLER.DERSID
  Group by DERSAD

  select LEFT(DERSAD,3),AVG(ORTALAMA)  from TBLNOTLAR
  INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS=TBLDERSLER.DERSID
  Group by DERSAD

  SELECT OGRAD,LEN(OGRAD) 'karekter uzunlu�u' FROM TBLOGRENC�LER 

  select * from TBLOGRENC�LER where LEN (OGRAD)=4 or len(OGRAD)=3

  select ltrim ('      batman g�zel bir �ehir      ')
  select rtrim ('      batman g�zel bir �ehir      ')

  select REPLACE ('Murat Yuceda�','Yuceda�','y. da�')
  select CHARINDEX('e','SQL derslerine',20)

  select CHARINDEX('a',OGRAD) from TBLOGRENC�LER

  select len('SQL Dersleine Devam Ediyoruz')

  select REVERSE ('Murat')
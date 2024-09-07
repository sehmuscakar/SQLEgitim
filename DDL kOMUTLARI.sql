--DDL kOMUTLARI // VERÝ TANIMLAMA KONUTLARI -- Tablo üzerinde deðiþiklik yapma
--DDL (Data Definition Language - Veri Tanýmlama Dili) komutlarý, bir veritabanýnda kullanýlan tablolarýn, dizinlerin,
--iliþkilerin ve diðer veri yapýlarýn tanýmlanmasýný ve deðiþtirilmesini saðlayan SQL komutlarýdýr. 
--DDL komutlarý, veritabaný yapýsýný oluþturan veya deðiþtiren komutlar olarak düþünülebilir.

Create TABLE TBLDERSLER( -- tablo ismi
DERSID tinyint, --sutun isimleri
DERSAD varchar(20),
)

use DbOgrenciNot -- bu veritabanýný kullan 

Alter Table TBLDERSLER 
--Add KONTEJAN smallint -- ilgili tabloya Kontejan columnu ekler
Drop Column KONTEJAN -- ÝLGÝLÝ sutunu siler

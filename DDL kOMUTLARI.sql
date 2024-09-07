--DDL kOMUTLARI // VER� TANIMLAMA KONUTLARI -- Tablo �zerinde de�i�iklik yapma
--DDL (Data Definition Language - Veri Tan�mlama Dili) komutlar�, bir veritaban�nda kullan�lan tablolar�n, dizinlerin,
--ili�kilerin ve di�er veri yap�lar�n tan�mlanmas�n� ve de�i�tirilmesini sa�layan SQL komutlar�d�r. 
--DDL komutlar�, veritaban� yap�s�n� olu�turan veya de�i�tiren komutlar olarak d���n�lebilir.

Create TABLE TBLDERSLER( -- tablo ismi
DERSID tinyint, --sutun isimleri
DERSAD varchar(20),
)

use DbOgrenciNot -- bu veritaban�n� kullan 

Alter Table TBLDERSLER 
--Add KONTEJAN smallint -- ilgili tabloya Kontejan columnu ekler
Drop Column KONTEJAN -- �LG�L� sutunu siler

--DDL kOMUTLARI // VERİ TANIMLAMA KONUTLARI -- Tablo üzerinde değişiklik yapma
--DDL (Data Definition Language - Veri Tanımlama Dili) komutları, bir veritabanında kullanılan tabloların, dizinlerin,
--ilişkilerin ve diğer veri yapıların tanımlanmasını ve değiştirilmesini sağlayan SQL komutlarıdır. 
--DDL komutları, veritabanı yapısını oluşturan veya değiştiren komutlar olarak düşünülebilir.

Create TABLE TBLDERSLER( -- tablo ismi
DERSID tinyint, --sutun isimleri
DERSAD varchar(20),
)

use DbOgrenciNot -- bu veritabanını kullan 

Alter Table TBLDERSLER 
--Add KONTEJAN smallint -- ilgili tabloya Kontejan columnu ekler
Drop Column KONTEJAN -- İLGİLİ sutunu siler

-- Bir deðiþken tanýmlýyoruz ve ona bir deðer atýyoruz.
-- @sayi isimli bir int (tamsayý) deðiþkeni oluþturuluyor.
Declare @sayi int

-- @sayi deðiþkenine 24 deðeri atanýyor.
set @sayi = 24 

-- @sayi deðiþkeninin deðeri 'Sonuç' baþlýðý altýnda gösteriliyor.
Select @sayi as 'Sonuç' 


-- Bir baþka deðiþken olan @kisi1 tanýmlanýyor ve bu deðiþken varchar (20 karakter uzunluðunda) tipinde.
declare @kisi1 varchar(20)

-- @kisi1 deðiþkenine 'Murat' deðeri atanýyor.
set @kisi1 = 'Murat'

-- @kisi1'in deðeri ekrana yazdýrýlýyor. Bu durumda sonuç 'Murat' olur.
select @kisi1 


-- Birden fazla deðiþken ayný anda tanýmlanýyor.
-- @sayi1, @sayi2 ve @toplam isimli üç int (tamsayý) deðiþkeni oluþturuluyor.
declare @sayi1 int, @sayi2 int, @toplam int

-- @sayi1 ve @sayi2'ye sýrasýyla 20 ve 30 deðerleri atanýyor.
set @sayi1 = 20
set @sayi2 = 30

-- @toplam deðiþkenine, @sayi1 ve @sayi2'nin toplamý atanýyor.
set @toplam = @sayi1 + @sayi2

-- @toplam deðiþkeni ekrana yazdýrýlýyor. Sonuç: 50 olacaktýr.
select @toplam


-- Koþul yapýsýný kullanarak @toplam'ýn deðeri kontrol ediliyor.
if @toplam > 50  -- Eðer @toplam deðiþkeni 50'den büyükse
begin
    select 'Büyük' as 'Sonuç'  -- 'Büyük' ifadesini 'Sonuç' baþlýðýyla döndür
end
else  -- Eðer @toplam 50'den büyük deðilse (küçük veya eþitse)
begin
    select 'Küçük' as 'Sonuç'  -- 'Küçük' ifadesini 'Sonuç' baþlýðýyla döndür
end


-- Ayný iþlemi CASE ifadesiyle gerçekleþtirelim.
select 
    case 
        when @toplam > 50 then 'Büyük'  -- Eðer @toplam 50'den büyükse 'Büyük' döndür
        else 'Küçük'  -- Aksi takdirde (50 veya daha küçükse) 'Küçük' döndür
    end as 'Sonuç'


-- Daha karmaþýk bir CASE ifadesi örneði:
select 
    case 
        when @toplam > 100 then 'Çok Büyük'  -- Eðer @toplam 100'den büyükse 'Çok Büyük' döndür
        when @toplam > 50 then 'Büyük'  -- 50'den büyük ama 100'den küçükse 'Büyük' döndür
        when @toplam = 50 then 'Tam 50'  -- Eðer @toplam 50 ise 'Tam 50' döndür
        else 'Küçük'  -- Diðer tüm durumlar için 'Küçük' döndür
    end as 'Sonuç'

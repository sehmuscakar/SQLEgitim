-- Bir de�i�ken tan�ml�yoruz ve ona bir de�er at�yoruz.
-- @sayi isimli bir int (tamsay�) de�i�keni olu�turuluyor.
Declare @sayi int

-- @sayi de�i�kenine 24 de�eri atan�yor.
set @sayi = 24 

-- @sayi de�i�keninin de�eri 'Sonu�' ba�l��� alt�nda g�steriliyor.
Select @sayi as 'Sonu�' 


-- Bir ba�ka de�i�ken olan @kisi1 tan�mlan�yor ve bu de�i�ken varchar (20 karakter uzunlu�unda) tipinde.
declare @kisi1 varchar(20)

-- @kisi1 de�i�kenine 'Murat' de�eri atan�yor.
set @kisi1 = 'Murat'

-- @kisi1'in de�eri ekrana yazd�r�l�yor. Bu durumda sonu� 'Murat' olur.
select @kisi1 


-- Birden fazla de�i�ken ayn� anda tan�mlan�yor.
-- @sayi1, @sayi2 ve @toplam isimli �� int (tamsay�) de�i�keni olu�turuluyor.
declare @sayi1 int, @sayi2 int, @toplam int

-- @sayi1 ve @sayi2'ye s�ras�yla 20 ve 30 de�erleri atan�yor.
set @sayi1 = 20
set @sayi2 = 30

-- @toplam de�i�kenine, @sayi1 ve @sayi2'nin toplam� atan�yor.
set @toplam = @sayi1 + @sayi2

-- @toplam de�i�keni ekrana yazd�r�l�yor. Sonu�: 50 olacakt�r.
select @toplam


-- Ko�ul yap�s�n� kullanarak @toplam'�n de�eri kontrol ediliyor.
if @toplam > 50  -- E�er @toplam de�i�keni 50'den b�y�kse
begin
    select 'B�y�k' as 'Sonu�'  -- 'B�y�k' ifadesini 'Sonu�' ba�l���yla d�nd�r
end
else  -- E�er @toplam 50'den b�y�k de�ilse (k���k veya e�itse)
begin
    select 'K���k' as 'Sonu�'  -- 'K���k' ifadesini 'Sonu�' ba�l���yla d�nd�r
end


-- Ayn� i�lemi CASE ifadesiyle ger�ekle�tirelim.
select 
    case 
        when @toplam > 50 then 'B�y�k'  -- E�er @toplam 50'den b�y�kse 'B�y�k' d�nd�r
        else 'K���k'  -- Aksi takdirde (50 veya daha k���kse) 'K���k' d�nd�r
    end as 'Sonu�'


-- Daha karma��k bir CASE ifadesi �rne�i:
select 
    case 
        when @toplam > 100 then '�ok B�y�k'  -- E�er @toplam 100'den b�y�kse '�ok B�y�k' d�nd�r
        when @toplam > 50 then 'B�y�k'  -- 50'den b�y�k ama 100'den k���kse 'B�y�k' d�nd�r
        when @toplam = 50 then 'Tam 50'  -- E�er @toplam 50 ise 'Tam 50' d�nd�r
        else 'K���k'  -- Di�er t�m durumlar i�in 'K���k' d�nd�r
    end as 'Sonu�'

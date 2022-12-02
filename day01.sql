--DATABASE(VeriTabani) Olusturma
Create database ferhat52; 

--DDL - DATA DEFINITION LANG.
--CREATE - TABLO OLUSTURMA
CREATE TABLE ogrenciler1
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,
kayit_tarih date
);

--Varolan tablodan yeni bir tablo olusturma
create table ogrenci_notlari
AS    -- Benzer tablodaki basliklarla ve data tipleriyle yeni bir tablo olusturmak icin 
--normal tablo olustururken  ki parantezler yerine AS kullanip select komutuyla almak istedigimiz verileri aliriz 
SELECT isim,soyisim,not_ort,kayit_tarih FROM ogrenciler1;

--DML  -  DATA MANUPULATION LANG.
--INSERT (Database'e veri ekleme)

insert into ogrenciler1 VALUES ('1234567','SAID','ILHAN',85.5,now());
insert into ogrenciler1 VALUES ('1234567','SAID','ILHAN',85.5,'2020-12-11');

--BIR TABLOYA PARCALI VERI EKLEMEK ISTERSEK

INSERT INTO ogrenciler1(isim,soyisim) VALUES ('Ferhat','Bayturk')

--DQL  -DATA QUERY LANG.
--SELECT

select * from ogrenciler1;


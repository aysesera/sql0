/*
SELECT - LIKE koşulu
LIKE : Sorgulama yaparken belirli (pattern) kalıp ifadeleri kullanabilmemizi sağlar
ILIKE : Sorgulama yaparken büyük/küçük harfe duyarsız olarak eşleştirir
LIKE : ~~
ILIKE : ~~*
NOT LIKE : !~~
NOT ILIKE :!~~*
% --> 0 veya daha fazla karakteri belirtir.
_ --> Tek bir karakteri belirtir
*/
-- Ismi A harfi ile baslayan personeli listele
select * from personel WHERE isim like 'A%';
-- Ismi t harfi ile biten personeli listele
select * from personel WHERE isim like '%t';
-- Isminin 2. harfi e olan personeli listeleyiniz
select * from personel WHERE isim ilike '_e%'

-- 'a' ile başlayıp 'n' ile biten personel isimlerini listeleyiniz
select * from personel WHERE isim ilike '_a%n'
--2.yol
select isim from personel WHERE isim ~~* 'a%n'
select * from personel;
-- ikinci karakteri 'a' ve dördüncü karakteri 'u' olan
--personel isimlerini listeleyiniz
select isim from personel WHERE isim like '_a_u%'
-- İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
select isim from personel WHERE  isim ~~* '%e%' and isim  ~~ '%r%'
select isim from personel WHERE  isim ~~* '%e%' or isim  ~~ '%r%'

-- 2. harfi e olup diğer harflerinde y olan personeli listeleyiniz
select isim from personel WHERE  isim like '_e%y%';

-- a harfi olmayan personeli listeleyin
select isim from personel WHERE isim !~~ '%a%'

-- basında a olamayan
select isim from personel WHERE isim not ilike 'a%'

-- 1. harfi A ve 7. harfi a olan personeli listeleyin
select isim from personel WHERE isim ilike 'a_____a%'

--Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
select isim from personel where isim like '%r_'


-- 1. FİYAT GÜNCELLEME (UPDATE)
-- Menüdeki Latte'nin fiyatına zam geldiğini varsayalım (110 TL -> 125 TL).
-- Dikkat: WHERE kullanmazsak menüdeki TÜM ürünlerin fiyatı 125 TL olur!
UPDATE urunler 
SET fiyat = 125.00 
WHERE urun_id = 2;

-- 2. HESAP KAPATMA / ÖDEME ALMA (UPDATE)
-- Bahçe 1 masası (masa_id = 1) kalkarken tüm borcunu ödedi.
-- O masaya ait ödenmemiş siparişlerin durumunu TRUE (Ödendi) yapıyoruz.
UPDATE siparisler 
SET odendi_mi = TRUE 
WHERE masa_id = 1 AND odendi_mi = FALSE;

-- 3. YANLIŞ SİPARİŞ İPTALİ (DELETE)
-- Teras 1 masasına (masa_id = 3) girilen 4 numaralı sipariş kaydı yanlış girildi, siliyoruz.
-- Dikkat: DELETE işleminde WHERE şartı hayati önem taşır; yazılmazsa tüm tablo boşalır.
DELETE FROM siparisler 
WHERE siparis_id = 4;
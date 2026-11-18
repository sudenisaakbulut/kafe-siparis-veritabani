-- 1. TÜM SİPARİŞLERİN DETAYLI LİSTESİ (INNER JOIN)
SELECT 
    s.siparis_id,
    m.masa_adi,
    u.urun_adi,
    s.adet,
    u.fiyat AS birim_fiyat,
    (s.adet * u.fiyat) AS ara_toplam,
    CASE WHEN s.odendi_mi = 1 THEN 'Ödendi' ELSE 'Ödenmedi' END AS durum
FROM siparisler s
INNER JOIN masalar m ON s.masa_id = m.masa_id
INNER JOIN urunler u ON s.urun_id = u.urun_id;

-- 2. AÇIK HESAPLAR (MASA BAZLI BORÇ HESAPLAMA - WHERE & GROUP BY)
SELECT 
    m.masa_adi,
    SUM(s.adet * u.fiyat) AS odenecek_toplam_tutar
FROM siparisler s
INNER JOIN masalar m ON s.masa_id = m.masa_id
INNER JOIN urunler u ON s.urun_id = u.urun_id
WHERE s.odendi_mi = FALSE
GROUP BY m.masa_adi;

-- 3. EN ÇOK SATAN ÜRÜNLER VE CİRO RAPORU (ORDER BY)
SELECT 
    u.urun_adi,
    SUM(s.adet) AS toplam_satis_adedi,
    SUM(s.adet * u.fiyat) AS toplam_ciro
FROM siparisler s
INNER JOIN urunler u ON s.urun_id = u.urun_id
GROUP BY u.urun_adi
ORDER BY toplam_satis_adedi DESC;
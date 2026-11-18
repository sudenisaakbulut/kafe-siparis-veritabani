-- Masaları ekleyelim (ID: 1, 2, 3)
INSERT INTO masalar (masa_adi, kapasite) VALUES 
('Bahçe 1', 4),
('Salon 2', 2),
('Teras 1', 6);

-- Menüdeki ürünleri ekleyelim (ID: 1, 2, 3, 4)
INSERT INTO urunler (urun_adi, fiyat) VALUES 
('Filtre Kahve', 85.00),
('Latte', 110.00),
('Cheesecake', 160.00),
('Limonata', 95.00);

-- Siparişleri ekleyelim
INSERT INTO siparisler (masa_id, urun_id, adet, odendi_mi) VALUES 
(1, 2, 2, FALSE),  -- Bahçe 1 masasına 2 adet Latte (Ödenmedi)
(1, 3, 1, FALSE),  -- Bahçe 1 masasına 1 adet Cheesecake (Ödenmedi)
(2, 1, 1, TRUE),   -- Salon 2 masasına 1 adet Filtre Kahve (Ödendi)
(3, 4, 3, FALSE);  -- Teras 1 masasına 3 adet Limonata (Ödenmedi)
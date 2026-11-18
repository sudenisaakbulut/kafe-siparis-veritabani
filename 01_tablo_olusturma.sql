-- 1. Masalar Tablosu
CREATE TABLE masalar (
    masa_id INT AUTO_INCREMENT PRIMARY KEY,
    masa_adi VARCHAR(30) NOT NULL,
    kapasite INT DEFAULT 4
);

-- 2. Ürünler (Menü) Tablosu
CREATE TABLE urunler (
    urun_id INT AUTO_INCREMENT PRIMARY KEY,
    urun_adi VARCHAR(50) NOT NULL,
    fiyat DECIMAL(6, 2) NOT NULL
);

-- 3. Siparişler Tablosu (İlişkilerin Kurulduğu Yer)
CREATE TABLE siparisler (
    siparis_id INT AUTO_INCREMENT PRIMARY KEY,
    masa_id INT NOT NULL,
    urun_id INT NOT NULL,
    adet INT NOT NULL DEFAULT 1,
    odendi_mi BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (masa_id) REFERENCES masalar(masa_id),
    FOREIGN KEY (urun_id) REFERENCES urunler(urun_id)
);
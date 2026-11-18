# ☕ Kafe & Sipariş Takip Veritabanı (MySQL)

Bu proje, ilişkisel veritabanı yönetim sistemleri (RDBMS) mimarisini, tablo normalizasyonunu ve temel/orta seviye SQL sorgularını gerçek bir işletme senaryosu üzerinde uygulamak amacıyla geliştirilmiş bir **Kafe Adisyon ve Sipariş Takip** veritabanı projesidir.

---

## 🎯 Projenin Amacı
Veri tekrarını önleyerek masaların, menü ürünlerinin ve sipariş hareketlerinin tutarlı bir şekilde yönetilmesini sağlamak; açık hesap takibi ve ürün bazlı ciro analizlerini SQL sorgularıyla raporlamaktır.

---

## 🗂️ Veritabanı Mimarisi ve Tablolar

Sistem, aralarında **Primary Key (Birincil Anahtar)** ve **Foreign Key (Yabancı Anahtar)** ilişkileri bulunan 3 ana tablo üzerine kurulmuştur:

| Tablo Adı | Görevi | Önemli Sütunlar |
| :--- | :--- | :--- |
| **`masalar`** | Kafedeki masaların tanım ve kapasite bilgilerini tutar. | `masa_id` (PK), `masa_adi`, `kapasite` |
| **`urunler`** | Menüdeki yiyecek/içecekleri ve güncel birim fiyatlarını saklar. | `urun_id` (PK), `urun_adi`, `fiyat` |
| **`siparisler`** | Hangi masaya, hangi üründen kaç adet sipariş edildiğini ve ödeme durumunu tutan merkez tablodur. | `siparis_id` (PK), `masa_id` (FK), `urun_id` (FK), `adet`, `odendi_mi` |

---

## 📁 Proje Dosya Yapısı

```text
kafe-siparis-veritabani/
├── 01_tablo_olusturma.sql   # Veritabanı şeması, veri tipleri ve tablo ilişkileri (DDL)
├── 02_ornek_veriler.sql     # Test amaçlı örnek masa, ürün ve sipariş kayıtları (DML)
├── 03_rapor_sorgulari.sql   # JOIN, GROUP BY ve SUM içeren iş zekası sorguları (DQL)
├── 04_veri_guncelleme.sql   # Fiyat güncelleme, hesap kapatma ve sipariş iptali (UPDATE/DELETE)
└── README.md                # Proje dokümantasyonu
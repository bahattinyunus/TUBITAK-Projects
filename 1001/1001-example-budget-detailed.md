# Detaylı Bütçe - Akıllı Sera Projesi (1001)

## Proje: Akıllı Serada Enerji Tasarrufu Sistemi
**Toplam Süre**: 10 ay  
**Toplam Bütçe**: 247,500 ₺

---

## A. DOĞRUDAN MADDİ GİDERLER

### A1. Donanım ve Ekipman (Toplam: 50,500 ₺)

#### Sensörler ve IoT Bileşenleri
| Ürün | Adet | Birim Fiyat | Toplam | Açıklama |
|------|-----|-----------|--------|---------|
| DHT22 Sıcaklık/Nem Sensörü | 30 | 350 | 10,500 | Kalibrasyonlu, -40°C to +125°C |
| LDR (Işık Sensörü) | 25 | 80 | 2,000 | Oto-on/off kontrol için |
| MQ135 Hava Kalitesi | 10 | 200 | 2,000 | CO₂ ölçümü |
| **Subtotal Sensörler** | | | **14,500** | |

#### Kontrol Birimleri
| Ürün | Adet | Birim Fiyat | Toplam | Açıklama |
|------|-----|-----------|--------|---------|
| Raspberry Pi 4 (8GB) | 3 | 4,500 | 13,500 | Ana kontrol ve ML çalıştırma |
| Arduino Mega 2560 | 3 | 1,200 | 3,600 | Lokal sensör okuması |
| microSD Kartı (64GB) | 6 | 350 | 2,100 | OS ve veri depolama |
| **Subtotal Kontrolcüler** | | | **19,200** | |

#### Güç ve Elektrik
| Ürün | Adet | Birim Fiyat | Toplam | Açıklama |
|------|-----|-----------|--------|---------|
| 5V 3A Power Supply | 5 | 450 | 2,250 | Raspberry Pi için |
| 12V 2A Power Supply | 3 | 350 | 1,050 | Arduino ve solenoid için |
| UPS Batarya (12V 7Ah) | 2 | 800 | 1,600 | Kesinti koruması |
| **Subtotal Güç** | | | **4,900** | |

#### Mekanik ve İnşaat Bileşenleri
| Ürün | Adet | Birim Fiyat | Toplam | Açıklama |
|------|-----|-----------|--------|---------|
| Alüminyum Profil ve Bracket | 1 paket | 1,500 | 1,500 | Sensör montaj için |
| 4 Kanallı Röle Modülü | 5 | 250 | 1,250 | On/off kontrolü |
| Solenoid Valf (2" x 2") | 2 | 600 | 1,200 | Havalandırma kapısı kontrolü |
| Kontaktor ve Termostat | 2 set | 1,200 | 2,400 | Isıtma kontrol |
| **Subtotal Mekanik** | | | **6,350** | |

**A1 Toplam: 50,500 ₺**

---

### A2. Yazılım Lisansları ve Bulut (Toplam: 30,000 ₺)

| İtem | Süre | Aylık Birim | Toplam | Açıklama |
|------|-----|-----------|--------|---------|
| AWS EC2 (t3.small) | 10 ay | 1,500 | 15,000 | Backend sunucu |
| AWS IoT Core | 10 ay | 500 | 5,000 | MQTT broker ve veri bağlantı |
| Database (RDS PostgreSQL) | 10 ay | 600 | 6,000 | Zaman serisi veri |
| GitHub Enterprise | 10 ay | 200 | 2,000 | Versiyon kontrol ve CI/CD |
| **Subtotal Cloud** | | | **28,000** | |

| İtem | Birim | Miktar | Toplam | Açıklama |
|------|------|--------|--------|---------|
| TensorFlow Pro Lisansı | - | - | 2,000 | ML model deployment |
| **A2 Toplam** | | | **30,000** | |

---

### A3. Tüketim Malzemeleri (Toplam: 8,000 ₺)

| Kalem | Miktar | Birim Fiyat | Toplam |
|------|--------|-----------|--------|
| PCB Prototip Kiti | 10 | 200 | 2,000 |
| Lehim, Yapıştırıcı, Termal Pad | 1 paket | 800 | 800 |
| USB Kablolar, Bağlantıcılar | 1 paket | 600 | 600 |
| Ethernet, PoE Kablolar | 1 paket | 500 | 500 |
| Test Cihazları (Multimetre, vs.) | 2 | 1,500 | 3,000 |
| Diğer Elektronik Sarf | - | 1,100 | 1,100 |
| **A3 Toplam** | | | **8,000** | |

---

### A4. Yayın ve Harita Giderleri (Toplam: 5,000 ₺)

| Kalem | Adet | Birim Fiyat | Toplam |
|------|-----|-----------|--------|
| Dergi Yayını Masrafı (2 makale) | 2 | 1,500 | 3,000 |
| Konferans Bildiri Yayını | 1 | 1,000 | 1,000 |
| Çiftçi Rehberi Basımı (500 kopya) | 500 | 4 | 2,000 |

Toplam A4 bütçe kadar kaydedildi (3,000 + 1,000 = 4,000 ₺) düşme ile 5,000 ₺'de.

**A4 Toplam: 5,000 ₺**

---

## B. KİŞİSEL GİDERLER (Toplam: 45,000 ₺)

### B1. Teknik Personel

| Pozisyon | Ay | Aylık Miktar | Toplam | Açıklama |
|----------|-----|-------------|--------|---------|
| Yazılım Geliştirici (1.5 FTE) | 10 | 7,500 | 75,000 | Backend, frontend, veri API |
| Donanım Teknisyeni (1 FTE) | 8 | 3,500 | 28,000 | Sensör kurulum, kalibrasyonu |
| Veri Analisti (0.5 FTE) | 8 | 2,500 | 10,000 | ML model eğitimi, rapor |
| **Brüt Subtotal** | | | 113,000 | |

**Sigorta ve Sosyal Giderler (%20)**: 22,600 ₺  
**B1 Toplam**: 135,600 ₺

Ancak bütçe sınırlandırması için **pilot ödeneği** ayarlaması yapıldı:
**B1 Kısıtlı Toplam: 45,000 ₺** (proje koordinatörü ve çiftçi danışmanlığı destek)

---

### B2. Seyahat (Toplam: 10,000 ₺)

| Seyahat Tipi | Gidiş | Kişi | Birim | Toplam |
|------------|------|-----|------|--------|
| Pilot test alanı ziyareti (Marmara) | 4 kez | 2 | 1,200 | 9,600 |
| Konferans katılımı | 1 | 2 | 2,000 | 4,000 |

Sabit bütçe: **10,000 ₺**

---

## C. DOLAYSAL (INDIRECT) GİDERLER

### C1. Genel Giderler (%25)

Direkt Giderler Toplamı (A + B1 + B2):  
50,500 + 30,000 + 8,000 + 5,000 + 45,000 + 10,000 = 148,500 ₺

**Dolaylı Giderler (%25)**: 148,500 × 0.25 = 37,125 ₺

---

## D. KDV VE VERGİLER

| Vergi Türü | Oran | Miktar | Toplam |
|-----------|------|--------|--------|
| KDV (%18) | 18% | (148,500 + 37,125) = 185,625 | 33,412.50 |
| Kurumlar Vergisi | Muaf | - | - |

---

## ÖZET BÜTÇE

| Bölüm | Miktar |
|------|--------|
| A. Doğrudan Maddi Giderler | 93,500 |
| B. Personel Giderleri | 55,000 |
| C. Dolaylı Giderler (%25) | 37,125 |
| **Ara Toplam** | **185,625** |
| KDV (%18) | 33,412 |
| **GEN TOPLAM BÜTÇE** | **219,037 ₺** |

---

## Ek Notlar

1. **Personel**: Proje koordinatörlüğü ve danışmanlık hizmetleri kısıtlanmıştır (başlı personel kurumlarca sağlanır).
2. **Donanım Yerelleştirmesi**: Gümrük vergileri ve nakliye dahil değildir; ihracı kalemlendirerek ulusal tedarikçi kullanılması önerilir.
3. **Bulut Hizmetleri**: AWS spot instance kullanımı maliyeti %30 oranında azaltabilir.
4. **Veri Yönetimi**: Açık veri politikası uyarınca tüm hammadde GitHub'da saklanacak (depolama masrafı negligible).

---

*Bu şablon TÜBİTAK 1001 YAYIN güncel rehberlerine uygun olarak hazırlanmıştır. Kurumunuzun finansal kurallarını kontrol edin.*

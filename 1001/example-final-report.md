# Proje Raporu Örneği - Akıllı Sera Projesi (1001)

## ARAŞTIRMA PROJESİ SONUÇ RAPORU

**Proje Adı**: Akıllı Serada Otomatik Isıtma-Soğutma Kontrolü ve Enerji Yönetimi Sistemi  
**Proje No**: [TÜBİTAK Vergi No]  
**Süresi**: 10 Ay  
**Rapor Tarihi**: Kasım 2025  
**Proje Sorumlusu**: Dr. Ahmet Kaya

---

## I. ÖZET

Bu araştırma projesi, küçük ve orta ölçekli seraların enerji verimliliğini artırmak amacıyla, IoT sensörleri ve makine öğrenmesi algoritmalarını kullanan akıllı bir sera yönetim sistemi geliştirmişdir. 10 aylık süre içinde, donanım prototipi tasarlanmış, ML modeli eğitilmiş ve Marmara Bölgesi'nde bulunan bir sera işletmesinde 8 haftalık pilot test yapılmıştır.

### Temel Bulgular
- **Enerji Tasarrufu**: Pilot serada %32 enerji tüketim azalması
- **Su Tasarrufu**: Otomatik havalandırma ile %18 su tasarrufu
- **Üretim Kalitesi**: Bitki büyüme oranında %12 iyileşme
- **Maliyet Geri Dönüş**: 18 ay

---

## II. GİRİŞ VE AMAÇLAR

### Arka Plan
Türkiye'de seracılık sektörü, Akdeniz ve Marmara Bölgelerinde önemli ekonomik katkı sağlamaktadır. Ancak, enerji maliyetleri sera işletmelerinin toplam giderlerinin %25-35'ini oluşturmaktadır. Geleneksel manuel yönetim yöntemleri enerji verimliliğinde önemli kayıplara neden olmaktadır.

### Proje Amacı
Sera yönetiminde IoT ve AI teknolojilerini uygulamak suretiyle:
1. Enerji tüketimini %30 oranında azaltmak
2. Ürün kalitesini ve verimini artırmak
3. Çiftçiler için kullanıcı dostu bir sistem geliştirmek

### Hedefler
- H1: IoT sensör ağının tasarımı ve kurulumu ✅ (Ay 4'te tamamlandı)
- H2: ML modeli geliştirme ve eğitimi ✅ (Ay 6'da tamamlandı)
- H3: Mobil uygulama ve web dashboard ✅ (Ay 8'de tamamlandı)
- H4: Pilot test ve veri analizi ✅ (Ay 10'da tamamlandı)
- H5: Bilimsel yayın (hazırlık aşamasında) ⏳

---

## III. YÖNTEM VE ÇALIŞMA PLANI

### 3.1 Metodoloji

#### Aşama 1: Sistem Tasarımı (Ay 1-2)
- Mevcut sera yönetim sistemlerinin incelenmesi
- Sensör gereksinimlerinin belirlenmesi
- Yazılım mimarisi (mikro servisler)
- Veri protokolü tasarımı (MQTT)

**Çıktı**: Teknik tasarım dökümanı (25 sayfa)

#### Aşama 2: Donanım Prototipi (Ay 2-4)
- Sensörlerin seçimi ve kalibrasyonu
- Kontrol devrelerinin tasarımı ve üretimi
- Pilot serada ilk kurulum
- Test ve iyileştirmeler

**Çıktı**: Çalışan donanım prototipi (3 birim)

#### Aşama 3: Yazılım Geliştirme (Ay 3-6)
- Python + Flask backend geliştirme
- React.js frontend dashboard
- ML modeli (LSTM ve Random Forest karşılaştırması)
- Veri depolama (PostgreSQL) ve API (REST)

**Çıktı**: Açık kaynak kod (GitHub), 2,500+ satır Python, 1,200+ satır JavaScript

#### Aşama 4: Veri Toplama ve Model Eğitimi (Ay 4-7)
- Pilot serada 3 ay sürecince günlük sensör verisi toplama
- Dış hava koşulları (OpenWeatherMap API)
- Enerji tüketim metrikleri (manuel okumalar)
- ML modeli eğitimi (sklearn + TensorFlow)

**Çıktı**: 90,000+ veri noktası, Model R² = 0.94

#### Aşama 5: Pilot Test ve Validasyon (Ay 7-9)
- Kontrol grubu (geleneksel yönetim) vs. İşlem grubu (AI sistem) karşılaştırması
- 8 haftalık paralel çalışma
- Veri analizi ve istatistiksel test (paired t-test)

**Çıktı**: Karşılaştırma tablosu, grafik analizleri

#### Aşama 6: Yayın ve Raporlama (Ay 9-10)
- Sonuçların özetlenmesi
- Bilimsel makale yazılması
- Çiftçi rehberi hazırlanması
- Açık kaynak kodun GitHub'a yüklenmesi

---

### 3.2 Katılımcılar ve Roller

| İsim | Kurum | Rol | Kontribüsyon (%) |
|------|------|-----|-----------------|
| Dr. Ahmet Kaya | Ege Üniv. | Koordinatör, proje yönetimi | 20 |
| Mehmet Şahin | XYZ Yazılım | Yazılım mimarı, backend geliştirme | 30 |
| Dr. Zeynep Aksoy | İTÜ | ML modeli, veri analizi | 25 |
| Can Demir | Teknoloji Merkezi | Donanım tasarımı | 15 |
| Ali Yıldız | Serac Tarım | Pilot test işbirliği, veri sağlama | 10 |

---

## IV. SONUÇLAR

### 4.1 Teknik Sonuçlar

#### Donanım Prototipi
- **Sensör Doğruluğu**: ±0.5°C (sıcaklık), ±2% (nem)
- **Veri Gönderme Sıklığı**: 1 dakika
- **Sistem Güvenilirliği**: %99.2 (uptime) — 8 haftalık test
- **Güç Tüketimi**: 24W (ortalama)

#### Yazılım Sistemi
- **API Tepki Süresi**: <200ms (p95)
- **Veri Depolama**: 90,000 veri noktası, 2.5 GB
- **Platform**: Cloud-agnostic (AWS, Azure, on-premise)
- **Mobil App**: iOS + Android (React Native)

#### ML Modeli Performansı

| Model | MAE (°C) | RMSE (°C) | R² | Tercih |
|-------|---------|----------|-----|--------|
| LSTM (32 hidden) | 0.23 | 0.31 | 0.941 | ✅ |
| Random Forest | 0.35 | 0.48 | 0.887 | |
| Linear Regression | 0.61 | 0.79 | 0.712 | |

**Sonuç**: LSTM modeli seçilmiş; sıcaklık tahmininde ±0.5°C hassasiyet elde edilmiştir.

---

### 4.2 Enerji ve Ekonomik Sonuçlar

#### Pilot Test (Marmara Sera, 8 hafta)

| Metrik | Kontrol (Manual) | İşlem (AI) | Fark | Yüzde |
|--------|-----------------|-----------|------|------|
| Isıtma Saati (Gün) | 8.5 sa | 5.8 sa | -2.7 sa | -32% |
| Elektrik (kWh) | 1,680 | 1,145 | -535 | -32% |
| Su Tüketimi (m³) | 24.5 | 20.0 | -4.5 | -18% |
| İşletme Maliyeti (₺) | 8,400 | 5,725 | **-2,675** | **-32%** |
| Verim (kg/m²) | 12.3 | 13.8 | +1.5 | **+12%** |

**Maliyet Analizi**: Sistemin başlangıç yatırımı ~25,000 ₺, Geri dönüş = ~10 ay

---

### 4.3 Bilimsel Sonuçlar

#### Yayınlar (Hazırlık aşamasında)
1. **"IoT ve Makine Öğrenmesi Kullanarak Serada Enerji Optimizasyonu"** — *Tarım Teknolojileri Dergisi* (Accepted)
2. **"Gerçek Zamanlı Sensör Verisi ile Sıcaklık Tahmin Modeli"** — *IEEE Sensors Journal* (Review aşaması)

#### Konferans Sunumları
- Tarım Teknolojileri Konferansı 2025 (Accepted)
- Smart Farming Summit (Pending)

#### Açık Veri ve Kod
- **GitHub Repo**: https://github.com/tubitak/smart-greenhouse-iot (MIT Lisansı)
- **Veri Seti**: https://zenodo.org/record/XXXXX (CC-BY 4.0)
- **Kod Satırları**: 3,700+ (Python), 1,200+ (JavaScript)

---

### 4.4 Sosyal ve Çevresel Etki

#### Teknoloji Transfer
- Pilot serada başarılı sonuç ile işbirliğini yapan çiftçi, benzer 2 sera daha için sistem kurulumu talep etmiştir.
- Bölgedeki 15+ sera işletmecisi ile görüşme yapılmış; %60'ı 2026 yılında pilot denemeye ilgi göstermiştir.

#### Çevresel Etki
- Pilot seradaki enerji tasarrufu: yıllık 2.1 ton CO₂ eşdeğeri (10 sera ölçeğinde: 21 ton)
- Su tasarrufu: yıllık 117 m³ (yeraltı suyu koruma)

#### Eğitim ve İnsan Kaynakları
- 3 üniversite öğrencisi proje kapsamında beceri geliştirmiştir
- Çiftçi rehberi yazdırılıp 500 kopyası bölge kooperatiflerine dağıtılacaktır

---

## V. TARTIŞMA

### 5.1 Sonuçların Değerlendirilmesi

Elde edilen %32 enerji tasarrufu, araştırma literatüründe rapor edilen %25-40 aralığında yer almaktadır (Castilla et al., 2013; Sharma et al., 2021). Başarının temel nedenleri:

1. **Düşük Gecikme Kontrolü**: MQTT protokolü ile <1sn cevap süresi
2. **Prediktif Model**: LSTM ML modeli gelecek 6 saat önceden planlama yapabilmesi
3. **Adaptif Algoritma**: Hava koşullarına ve bitki fenolojisine cevap verme

### 5.2 Sınırlamalar

1. **Sınırlı Pilot Alanı**: Tek sera türü ve iklim bölgesinde test; farklı bölgelere genelleme sınırlı
2. **Kısa Veri Süresi**: 3 ay (bir sezon) — mevsimsel değişim tam olarak yakalanmamış
3. **Fiyat Eşiği**: Sistem maliyeti (25,000-35,000 ₺) küçük seralar için yüksek

### 5.3 Gelecek Araştırma Önerileri

1. **Ölçek Artırma**: Farklı sera türleri (domates, salata, çiçek) ve bölgelerde test
2. **Alternatif Enerji Kaynakları**: Güneş paneli entegrasyonu
3. **Daha Düşük Maliyetli Versiyon**: Temel fonksiyonlar ile bütçe optimizasyonu
4. **Multi-sera Koordinasyonu**: Komşu seraları optimize etmek
5. **Merkezileştirilmiş Hizmet**: SaaS modeli (çiftçilik kolektifi için)

---

## VI. SONUÇ

Bu araştırma projesi, IoT ve makine öğrenmesi teknolojilerinin tarımsal uygulamada etkin olabileceğini göstermiştir. Pilot test sonuçları, sistemin hem ekonomik hem de çevresel olarak anlamlı faydalar sağladığını doğrulamıştır. Elde edilen yazılım ve donanım tasarımı açık kaynak olarak yayınlanmıştır; bu, teknoloji transferi ve sektörün hızlı adaptasyonunu kolaylaştıracaktır.

Proje başarısının devamında, TÜBİTAK'ın 1511 (Endüstriyel Araştırma ve Geliştirme Projesi) başvurusu önerilmektedir; bu, sistemin ticari ürüne dönüştürülmesine hizmet edecektir.

---

## VII. KAYNAKLAR

1. Castilla, N. (2013). Greenhouse technology and management. CABI Publishing, Wallingford, UK.
2. Sharma, A., et al. (2021). Machine Learning Applications in Precision Agriculture: A Survey. Sensors, 21(2), 407. https://doi.org/10.3390/s21020407
3. MQTT.org (2023). MQTT Version 5.0 Specification. Retrieved from https://mqtt.org/mqtt-specification
4. Goodfellow, I., Bengio, Y., & Courville, A. (2016). Deep Learning. MIT Press.
5. Marmara Tarım Araştırma Enstitüsü (2023). Sera Üretim İstatistikleri.

---

## VIII. EKLER

### Ek A: Teknik Spesifikasyonlar
- Sensör Veri Sayfası (Datasheet)
- Devre Diyagramları (3 sayfa)
- API Dokümantasyonu

### Ek B: Veri Analizi Grafikleri
- Sıcaklık vs. Tahmin Karşılaştırması
- Enerji Tüketim Grafiği (Kontrol vs. İşlem)
- Bitki Büyüme Eğrileri

### Ek C: Kod Örnekleri
- Python Backend: `main.py`, `ml_model.py`
- React Frontend: `Dashboard.jsx`
- Arduino Firmware: `sensor_reader.ino`

### Ek D: Görüşmeler ve Mektuplar
- Çiftçi İş Ortağı Mektup (Başarı Teyidi)
- Üniversite Onay Mektupları

---

*Rapor Tarihi: 15 Kasım 2025*  
*Sorumlu: Dr. Ahmet Kaya (ahmet.kaya@ege.edu.tr)*  
*İmza: ...........................*

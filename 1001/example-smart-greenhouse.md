# Proje Önerisi: Akıllı Serada Enerji Tasarrufu Sistemi

## 1. Proje Başlığı
**Akıllı Serada Otomatik Isıtma-Soğutma Kontrolü ve Enerji Yönetimi Sistemi**

---

## 2. Özet
Bu proje, küçük ve orta ölçekli seraların enerji tüketimini azaltmak amacıyla, IoT sensörleri, yapay zeka tabanlı sıcaklık kontrolü ve otomatik havalandırma sistemi geliştirmeyi hedeflenmektedir. Sistem, arazi koşullarına ve bitki ihtiyaçlarına dinamik olarak uyum sağlayarak, enerji maliyetlerini %30-40 oranında düşürmeyi amaçlar.

---

## 3. Amaç ve Hedefler

### Ana Amaç
Sera yönetim sistemlerinde enerji verimliliğini artırarak çiftçilerin işletme maliyetlerini azaltmak ve tarım sektöründe akıllı teknoloji uygulamalarını yaygınlaştırmak.

### Hedefler
- **H1**: IoT tabanlı sıcaklık, nem ve ışık sensörü ağı tasarımı ve prototipi (0-4. ay)
- **H2**: Makine öğrenmesi algoritması geliştirerek optimal ısıtma/soğutma çizelgelerini belirlemesi (3-6. ay)
- **H3**: Mobil uygulama ve bulut dashboard geliştirme (5-8. ay)
- **H4**: Pilot serada sistem testi ve veri analizi (6-8. ay)
- **H5**: Sonuçların bilimsel yayın ve çiftçi rehberinde yayınlanması (8-10. ay)

---

## 4. Yöntem ve Metodoloji

### Aşama 1: Gereksinimlerin Belirlenmesi ve Tasarım (Ay 1-2)
- Seraların enerji tüketim özelliklerinin analizi
- Sensör ve veri toplama sisteminin mimarisi
- Yazılım stack seçimi (Python + TensorFlow, Arduino/Raspberry Pi)

### Aşama 2: Donanım ve Firmware (Ay 2-4)
- DHT22 (sıcaklık/nem), LDR (ışık), ve isteğe bağlı CO₂ sensörleri seçimi ve kalibrasyonu
- Kontrol biriminin programlanması (Raspberry Pi 4 / Arduino Mega)
- Röle ve ısıtıcı/soğutucu kontrol devrelerinin kurulması

### Aşama 3: Makine Öğrenmesi Modeli (Ay 3-6)
- Pilot serada 2 ay boyunca sensör verilerinin toplanması
- Geçmiş enerji kullanım verisi ve hava koşulları ile bağlantı kurulması
- Random Forest / LSTM modelleri eğitilmesi ve doğruluğu test edilmesi

### Aşama 4: Yazılım Uygulamaları (Ay 5-8)
- Node.js backend ve React frontend (web dashboard)
- React Native ile mobil uygulama
- AWS/Azure cloud sunucu entegrasyonu

### Aşama 5: Pilot Test ve Validasyon (Ay 6-8)
- Marmara Bölgesi'nde bir çiftçi iş ortağı serasında 2 ay test
- Kontrol serada (konvansiyonel yönetim) ile karşılaştırma
- Enerji, su ve ürün kalitesi verilerinin toplanması

### Aşama 6: Yayın ve Raporlama (Ay 8-10)
- Bilimsel makaleler (Tarım Teknolojileri, Akıllı Sistem dergilerine)
- Çiftçi rehberi ve kullanım kılavuzu
- GitHub açık kaynaklı yayını (kod ve veri seti)

---

## 5. Zaman Çizelgesi (Gantt Özeti)

| Ay | 1-2 | 2-4 | 3-6 | 5-8 | 6-8 | 8-10 |
|------|:---:|:---:|:---:|:---:|:---:|:---:|
| Tasarım | █ |  |  |  |  |  |
| Hardware |  | █ | █ |  |  |  |
| ML Model |  |  | █ |  |  |  |
| Yazılım |  |  |  | █ |  |  |
| Pilot Test |  |  |  | █ | █ |  |
| Yayın |  |  |  |  |  | █ |

---

## 6. Bütçe (Özet)

**Toplam Bütçe: 247,500 ₺**

| Kalem | Açıklama | Miktar | Birim Fiyat | Toplam |
|-------|----------|--------|------------|--------|
| **Donanım (Sensörler)** | DHT22, LDR, CO₂ | 30 set | 1,200 | 36,000 |
| **Kontrol Birimler** | Raspberry Pi 4 (4GB), Arduino Mega | 3 | 3,500 | 10,500 |
| **Röle ve Kontrol Devreleri** | Kontaktor, şalter, kablo | 1 paket | 4,000 | 4,000 |
| **Bulut Hizmeti** | AWS/Azure, 10 ay | 10 ay | 2,500 | 25,000 |
| **Yazılım Lisansları** | IDE, kütüphaneler | - | 5,000 | 5,000 |
| **Tüketim Malzemeleri** | PCB, lehim, konektor, kablo | - | 8,000 | 8,000 |
| **Seyahat** | Pilot test alanı ziyaretleri (4 kez) | 4 | 2,500 | 10,000 |
| **Personel** | Teknikçi ödeneği (10 ay @ 2,500 ₺/ay) | 10 | 2,500 | 25,000 |
| **Yayın ve Konferans** | Makaleler ve sunumlar | - | 5,000 | 5,000 |
| **Ara Toplam**  |  |  |  | **123,500** |
| **Dolaylı Giderler (%25)** | Enstitü overhead | - | - | **30,875** |
| **KDV (%18)** | Vergiler | - | - | **93,125** |
| **TOPLAM BÜTÇE** |  |  |  | **247,500** |

Detay için: [`1001-example-budget-detailed.md`](./1001-example-budget-detailed.md)

---

## 7. Takım Yapısı ve Yetkinlikler

| Rol | Kişi | Kurum | Yetkinlik |
|-----|------|-------|----------|
| **Koordinatör (Proje Yöneticisi)** | Dr. Ahmet Kaya | Ege Üniv. Ziraat Mühendisliği | Sera teknolojileri, 10 yıl deneyim |
| **Yazılım Geliştirme Lider** | Mehmet Şahin | Yazılım Startupı XYZ | Full-stack dev, IoT sistemler, 5 yıl |
| **Veri Bilimi** | Dr. Zeynep Aksoy | İTÜ Elektrik Mühendisliği | ML, zaman serisi analizi, 3 yayın |
| **Donanım Müh.** | Can Demir | Teknoloji Merkezi | Elektronik tasarım, sensör kalibrasyonu, 4 yıl |
| **Pilot Test (Çiftçi İş Ortağı)** | Ali Yıldız | Serac Tarım İşletmesi | 20 yıl sera deneyimi |

---

## 8. Beklenen Sonuçlar

### Bilimsel Çıktılar
1. **Yayınlar**: Minimum 2 uluslararası dergi makalesi, 1 konferans sunumu
2. **Açık Kaynak Kod**: GitHub'da donanım tasarımı, yazılım kodu ve veri seti
3. **Rehber**: Türkçe çiftçi rehberi ve teknik dokümantasyon

### Teknolojik Çıktılar
- Tam çalışan IoT sera kontrol sistemi prototipi
- Mobil app + web dashboard
- ML modeli (reusable)

### Sosyal/Ekonomik Etki
- **Enerji Tasarrufu**: Pilot serada ≥%30 azalma (3,000-5,000 ₺/ay)
- **Su Tasarrufu**: Verimli havalandırmayla ≥%15 azalma
- **Üretim Kalitesi**: Tutarlı iklim koşuları → %10 verim artışı
- **Teknoloji Transfer**: Sonuçları bölgedeki 50+ sera işletmesine aktarım planı

---

## 9. Sonuçlarının Yaygın Etkileri

### Akademik Etki
- Serada akıllı sistemler üzerine yeni araştırma alanı oluşturma
- Üniversitelerin ilgili bölümlerinde ders/stüdyo projelerine konu olması

### Endüstriyel Etki
- Türkiye'deki sera işletmelerinin teknoloji benimsemesi hızlandırılması
- Enerji tasarrufu ve çevre dostu tarıma katkı

### Çevresel Etki
- Tarımsal enerji tüketiminin azaltılması
- Su kaynakları üzerindeki baskı azalması

---

## 10. Kaynaklar ve Referanslar

1. Castilla, N. (2013). Greenhouse technology and management. CABI Publishing.
2. Sharma, A., et al. (2021). Machine Learning Applications in Precision Agriculture. Sensors, 21(2), 407.
3. TÜBİTAK 1001 Kitabı: https://www.tubitak.gov.tr/sites/default/files/1001-yilligi-kitabi-2021.pdf
4. Smart Greenhouse Projects: https://www.researchgate.net/search?q=IoT+greenhouse+control (arama sonuçları)

---

## 11. Ek Notlar

- Pilot serada işbirliğinin yazılı şekli yapılacaktır
- Etik kurul onayı aranmayacaktır (bitki bazlı sistem)
- Üretilen verilerin ve kodun açık erişim ilkesine uygun şekilde paylaşılacağı taahhüt edilmektedir

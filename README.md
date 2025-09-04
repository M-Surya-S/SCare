# SCare (Stunting Care)  

SCare (Stunting Care) adalah aplikasi mobile berbasis **Flutter** yang dikembangkan sebagai solusi digital untuk membantu menurunkan angka **stunting** pada anak di Balikpapan, Indonesia. Aplikasi ini memberikan informasi gizi, layanan konsultasi medis, dan akses ke makanan bergizi bagi ibu hamil serta balita.  

## ✨ Fitur Utama  
- **Autentikasi Pengguna**  
  - Register & Login akun dengan UI sederhana.  
- **Home Page**  
  - Ringkasan nutrisi harian.  
  - Riwayat makanan terakhir.  
- **Konsultasi**  
  - Daftar konsultasi dengan dokter/ahli.  
  - Chat interaktif.  
- **Nutrisi Harian**  
  - Informasi kebutuhan nutrisi harian.  
  - Daftar makanan dengan detail kandungan gizi per porsi.  
- **Profil Pengguna**  
  - Informasi pribadi (nama, email, tanggal lahir, alamat).  
  - Tombol logout.  

## 📱 Tampilan  
Beberapa halaman yang tersedia dalam aplikasi:  
- Register Page  
- Login Page  
- Home Page  
- Consultation Page & Chat Page  
- Nutrition Page  
- Profile Page  

## 🛠️ Teknologi yang Digunakan  
- **Flutter (Dart)** → pengembangan aplikasi mobile  
- **Material Design** → UI/UX  
- *(Planned)* **Firebase** → integrasi database & autentikasi (belum terealisasi karena kendala teknis)  

## 🚀 Cara Menjalankan  
1. Clone repository ini  
   ```bash
   git clone https://github.com/M-Surya-S/SCare.git
   cd SCare
   ```
2. Install dependencies  
   ```bash
   flutter pub get
   ```
3. Jalankan aplikasi  
   ```bash
   flutter run
   ```

## 🎯 Tujuan Proyek  
- Memberikan edukasi gizi yang mudah dipahami bagi ibu hamil dan balita.  
- Menyediakan layanan konsultasi dengan dokter secara praktis.  
- Memfasilitasi akses makanan bergizi melalui platform digital.  

Proyek ini mendukung **Sustainable Development Goals (SDGs)**:  
- **SDG 2 – Tanpa Kelaparan** (mengakhiri malnutrisi & stunting).  
- **SDG 3 – Kehidupan Sehat dan Sejahtera** (peningkatan kesehatan ibu dan anak).  

## ⚠️ Kendala  
Pada tahap pengembangan, integrasi dengan **Firebase** mengalami kendala teknis sehingga aplikasi masih berjalan tanpa backend/database.  

## 📂 Struktur Project (ringkas)  
```
lib/
 ├── login_page.dart
 ├── register_page.dart
 ├── home_page.dart
 ├── consultation_page.dart
 ├── chat_page.dart
 ├── nutrition_page.dart
 └── profile_page.dart
```

## 📄 Lisensi  
Proyek ini dibuat untuk tujuan akademik di **Institut Teknologi Kalimantan**.   

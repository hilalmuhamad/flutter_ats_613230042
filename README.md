# flutter_ats

A new Flutter project.
# Flutter ATS Form Application

Aplikasi ini merupakan contoh implementasi form sederhana dengan Flutter yang menampilkan navigasi antar halaman dan animasi.

## Fitur yang Sudah Dikerjakan

### 1. Form Validasi
- Form untuk input data pengguna (nama dan email)
- Validasi input untuk memastikan data tidak kosong
- Validasi format email
- Tampilan responsif yang menyesuaikan dengan lebar layar (desktop/mobile)

### 2. Dialog Konfirmasi
- Menampilkan dialog konfirmasi setelah form berhasil divalidasi
- Menampilkan informasi yang telah diinputkan pengguna
- Tombol OK untuk melanjutkan ke halaman terima kasih

### 3. Navigasi Antar Halaman
- Navigasi dari halaman utama ke halaman terima kasih
- Pengiriman data (nama pengguna) antar halaman menggunakan route arguments
- Implementasi sistem routing yang terstruktur

### 4. Halaman Terima Kasih
- Tampilan halaman terima kasih yang responsif
- Animasi fade-in saat halaman dibuka (AnimatedOpacity)
- Menampilkan nama pengguna yang dikirim dari halaman sebelumnya

### 5. Struktur Proyek yang Terorganisir
- Struktur folder yang terorganisir (dashboard untuk halaman-halaman utama)
- Pemisahan tampilan menjadi beberapa widget untuk memudahkan maintenance
- Implementasi StatefulWidget dan StatelessWidget sesuai kebutuhan

### 6. UI/UX
- Desain antarmuka yang bersih dan modern dengan Material Design
- Penggunaan Material 3 untuk tampilan yang lebih modern
- Validasi form dengan pesan error yang informatif
- Padding dan spacing yang konsisten
- Responsif pada berbagai ukuran layar

## Cara Menjalankan Aplikasi
1. Pastikan Flutter SDK sudah terinstal
2. Clone repository ini
3. Jalankan `flutter pub get` untuk mengunduh dependensi
4. Jalankan aplikasi dengan `flutter run`

## Struktur Proyek
```
lib/
├── dashboard/
│   ├── home_page.dart   # Halaman form utama
│   └── thank_you.dart   # Halaman terima kasih
└── main.dart            # Entry point aplikasi dan konfigurasi routes
```

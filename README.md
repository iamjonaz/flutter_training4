# Aplikasi Profil Flutter

## Deskripsi
Aplikasi ini dibuat untuk memenuhi tugas praktikum mata kuliah Aplikasi Mobile. Project ini menggunakan Flutter dan Dart untuk membuat tampilan halaman profil pengguna.

## Fitur Aplikasi
- Menampilkan avatar dan informasi profil.
- Menampilkan nama dan jabatan pengguna.
- Menampilkan statistik proyek, followers, dan following.
- Menampilkan daftar pengalaman kerja.
- Mengubah nama profil melalui tombol Edit Profil.

## Proses Pengerjaan

### Hari 1 - Membuat Halaman Profil
- Membuat file `main.dart` dan `profile_page.dart`.
- Membuat tampilan dasar menggunakan Scaffold dan AppBar.
- Menambahkan avatar, nama, dan keterangan profil.
- Memisahkan avatar menjadi class `ProfileAvatar`.
- Memisahkan informasi pengguna menjadi class `ProfileInfo`.

### Hari 2 - Menambahkan Statistik Profil
- Menambahkan statistik Proyek, Followers, dan Following.
- Membuat tampilan statistik menggunakan Row dan Column.
- Memisahkan bagian statistik menjadi class `ProfileStats`.
- Membuat class `StatItem` agar setiap statistik bisa digunakan kembali.

### Hari 3 - Menambahkan Daftar Pengalaman
- Menambahkan daftar pengalaman kerja menggunakan `ListView.builder`.
- Menggunakan `Expanded` agar daftar bisa ditampilkan dan di-scroll dengan baik.
- Membuat class `ExperienceCard` untuk memisahkan tampilan setiap item pengalaman.
- Menambahkan ikon pekerjaan dan tampilan Card.

### Hari 4 - Menambahkan Fitur Edit Profil
- Mengubah `ProfilePage` dari StatelessWidget menjadi StatefulWidget.
- Membuat variabel untuk menyimpan nama pengguna.
- Menambahkan dialog edit profil menggunakan `showDialog`.
- Menambahkan TextFormField untuk mengubah nama.
- Menggunakan `setState()` agar nama profil berubah setelah disimpan.
- Merapikan kembali susunan kode dan tampilan aplikasi.

## Struktur Folder

```text
lib/
├── main.dart
├── profile_page.dart
└── widgets/
    ├── profile_avatar.dart
    ├── profile_info.dart
    ├── profile_stats.dart
    ├── stat_item.dart
    └── experience_card.dart
```

## Teknologi yang Digunakan
- Flutter
- Dart
- Visual Studio Code
- Git dan GitHub

## Cara Menjalankan Aplikasi

1. Buka folder project di Visual Studio Code.
2. Buka terminal pada folder project.
3. Jalankan perintah:

   `flutter pub get`

4. Jalankan aplikasi:

   `flutter run -d chrome`

## Commit Management

Pengerjaan dilakukan secara bertahap selama 4 hari. Setiap penambahan fitur dan perubahan kode disimpan menggunakan Git dengan pesan commit sesuai pekerjaan yang dilakukan.

Project ini dibuat sebagai latihan membuat tampilan Flutter, memisahkan widget agar bisa digunakan kembali, serta memahami penggunaan StatefulWidget dan setState().
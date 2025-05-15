Tugas Akhir - Aplikasi Web
Repositori ini merupakan bagian dari tugas akhir yang dikembangkan menggunakan teknologi web. Proyek ini bertujuan untuk membangun sebuah aplikasi web dengan menggunakan HTML, Java, dan Gherkin.

Fitur
- Struktur Proyek: Menggunakan Gradle sebagai sistem build.

- Bahasa Pemrograman: HTML (97.7%), Java (2.1%), dan Gherkin (0.2%).

- Organisasi Kode: Terdapat folder src untuk sumber kode utama, serta folder konfigurasi seperti .github, .idea, dan .vscode.

0 Automasi dan Konfigurasi: Disediakan file build.gradle, settings.gradle, dan gradle.properties untuk pengaturan proyek.

Tools dan Library yang Digunakan
- Java – Bahasa backend utama yang digunakan.
- Gradle – Tools build otomatis untuk mengelola dependensi dan proses kompilasi.
- Gherkin & Cucumber – Untuk menulis dan menjalankan pengujian berbasis Behavior Driven Development (BDD).
- VS Code / IntelliJ IDEA – Direkomendasikan sebagai IDE untuk membuka proyek ini.
- Selenium / WebDriver (opsional) – Jika aplikasi memiliki elemen antarmuka pengguna yang diuji secara otomatis.

Instalasi
1. Kloning repositori:
git clone https://github.com/Anisaidrsty/Tugas_Akhirjjj.git
2. Masuk ke direktori proyek:
cd Tugas_Akhirjjj
3. Bangun proyek menggunakan Gradle:
./gradlew build
4. Menjalankan Aplikasi 
Setelah proses build selesai, Anda dapat menjalankan aplikasi dengan perintah:
./gradlew run
Pastikan Anda memiliki Java dan Gradle terinstal di sistem Anda.
5. Menjalankan Test
Untuk menjalankan pengujian yang tersedia (termasuk pengujian dengan Gherkin/Cucumber), gunakan perintah:
./gradlew test
Pastikan semua dependensi sudah terinstall dan lingkungan pengembangan telah dikonfigurasi dengan benar.

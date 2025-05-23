@web @priority3
Feature: Login ke Demoblaze
@positive
Scenario: User berhasil login ke aplikasi
  Given user membuka halaman utama Demoblaze
  When user mengklik menu Log in
  And user memasukkan username "jamkrida" dan password "jamkrida123"
  And user menekan tombol Log in
  Then sistem menampilkan halaman utama

@negative
  Scenario: Gagal login dengan password salah
    Given user membuka halaman utama Demoblaze
    When user mengklik menu Log in
    And user memasukkan username "user123" dan password "gaktaulupa"
    And user menekan tombol Log in
    Then sistem menampilkan pesan "Wrong password."
@negative
  Scenario: Gagal login dengan username yang belum terdaftar
    Given user membuka halaman utama Demoblaze
    When user mengklik menu Log in
    And user memasukkan username "tidakadauser" dan password "password123"
    And user menekan tombol Log in
    Then sistem menampilkan pesan "User does not exist."

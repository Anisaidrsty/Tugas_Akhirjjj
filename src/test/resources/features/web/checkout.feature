@web @priority4
Feature: Checkout di Demoblaze

@negative
Scenario Outline: User mencoba checkout dengan data tidak valid
  Given User membuka halaman Demoblaze
  When User menambahkan produk "Samsung galaxy s6" ke keranjang
  And User pergi ke halaman cart
  And User membuka form checkout
  And User mengisi form checkout dengan data berikut:
    | name   | country   | city    | card       | month | year  |
    | <name> | <country> | <city>  | <card>     | <month> | <year> |
  And User menekan tombol Purchase berdasarkan data validitas
  Then Akan muncul pesan "<expected_message>" sesuai hasil <isSuccess>

  Examples:
    | name  | country   | city    | card       | month | year  | isSuccess | expected_message                    |
    |       | Indonesia | Jakarta | 123456789  | 01    | 2019  | false     | Please fill out Name and Creditcard. |
    | Anisa | Indonesia | Jakarta |            | 03    | 2021  | false     | Please fill out Name and Creditcard. |
    | Anisa | Indonesia | Jakarta | abcd1234   | 11    | 2020  | true      | Thank you for your purchase!         |
    | Anisa | Indonesia | Jakarta | 1234       | 12    | 2021  | true      | Thank you for your purchase!         |
    | Anisa | Indonesia | Jakarta | 123456789  | 10    | 2025  | true      | Thank you for your purchase!         |
    | Anisa | Indonesia | Jakarta | 123456789  | 11    | 2020  | true      | Thank you for your purchase!         |

@positive
Scenario Outline: User berhasil checkout dengan data valid
  Given User membuka halaman Demoblaze
  When User menambahkan produk "<produk>" ke keranjang
  And User pergi ke halaman cart
  And User membuka form checkout
  And User mengisi form checkout dengan data berikut:
    | name   | country   | city    | card       | month | year  |
    | <name> | <country> | <city>  | <card>     | <month> | <year> |
  And User menekan tombol Purchase berdasarkan data validitas
  Then Order berhasil diproses dan muncul pesan sukses "Thank you for your purchase!"
  And User menutup pop-up konfirmasi pembelian

  Examples:
    | produk             | name  | country   | city    | card       | month | year  |
    | Samsung galaxy s6  | Anisa | Indonesia | Jakarta | 123456789  | 10    | 2025  |
    | Sony xperia z5     | Rifky  | Korea    | Busan   | 987654321  | 11    | 2026  |

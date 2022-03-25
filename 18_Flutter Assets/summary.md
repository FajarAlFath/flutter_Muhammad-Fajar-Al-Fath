# Flutter Assets
## Resume
## 1. Assets
Dalam flutter terdapat sebuah assets yang dapat menyimpan berbagai data statis seperti gambar, font dan lain-lain. Data-data tersebut di bundle dalam suatu folder bernama Assets dan harus dideklarasikan di bagian pubspec.yml. Data-data tersebut nantinya akan di build otomatis bersama project mobile tersebut.

## 2. Image
Merupakan gambar yang dapat di gunakan dalam flutter untuk membuat tampilan ui menjadi lebih menarik. Cara menggunakannya sendiri ada berbagai macam seperti menampilakan dari assets dan dari internet.
```dart
//untuk menampilkan dari assets dan internet
Image.asset('assets/1.png'),

Image.network('https://ini gambar'),
```

## 3. Fonts
Merupakan gaya penulisan alphabet. Fonts dalam flutter dapat di customisasi dengan cara mengambilnya dari package atau mengimport font tersebut dengen cara mendownload dan mendaftarkannya di pubspec.yml. Untuk menggunakan font dapat menggunakan code berikut:
`fontFamily: 'silverroman',`

##
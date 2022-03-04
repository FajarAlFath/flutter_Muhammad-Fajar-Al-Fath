# Resume
## 7_Advance Function-Async-Await
Pada Section ini telah dipelajari hal sebagai berikut:
### 1. Fungsi Lanjutan
### 2. Async-Await
### 3. Tipe Data Future
### 4. Collection

### <b>1. Fungsi Lanjutan</b>
Pada bagian ini telah dipelajari dua macam fungsi lanjutan yaitu <**Anonymous Function**> dan **Arrow Function**. Pada dasar logika nya tidak terdapat banyka perbedaan hanya saja struktur penulisan dan penggunaannya yang sedikit berbeda.
contoh:
```dart
//Anonymous Function
var tha = (){
    print('Thank you so much');
}

//pemanggilan function
tha();
```
```dart
//Arrow Function
var lingkaran = (int a,int b) => a * b;
void main(){
    print (lingkaran(1,2));
}
```
### 2. Async-Await
Merupakan proses asyncronus yang dapat membuat suatu perintah harus menunggu atau dapat dijalankan secara langsung sesuai dengan kebutuhan.
contoh:
```dart
//contoh Async-Await
Future hai()async{
    await Future.delayaed(Duration(seconds:1,)(){
        print('hello this is pirst');
    })
}
var hai2(){
    print('hello this is second');
}
void main()async{
    //hai akan dikerjakan terlebih dahulu
    await hai();
    //hai2 akan menunggu sampai hai selesai dikerjakan
    hai2();
}
```
### 3. Data Future
Merupakan data yang dapat ditunggu dan merupakan bagian dari async.
### 4. Collection
Pada Pemograman dart terdapat dua collection yang sering sekali digunakan yaitu :
**List**
**dan Map**
#### cara membuat list dan map cukup sederhana
yaitu:
```dart
//contoh list
var hadiah = [];
hadiah.add(10);

//contoh map
var mahasiswa = {};
mahasiswa['nama']= 'alex';
```
### Praktikum
a. Membuat sebuah Advance Function dengan spesifikasi:
1. menerima 2 parameter, berupa list dan pengkali.
2. melakukan perulangan secara asynchronus.
3. tiap perulangan kalikan dengan pengkali.
4. return list baru.
#### hasil nya adalah sebagai berikut:
ss

b. Membuat list dengan spesifikasi berikut:
1. tiap element nya berupa list.
2. tiap element wajib memiliki 2 sub data.
3. buatlah sebuah map dari list tersebut!
#### hasil nya sebagai berikut:
ss
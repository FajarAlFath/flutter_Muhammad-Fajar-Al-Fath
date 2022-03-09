//soal no 1 dan no 2 digabung
import 'dart:io';

class Berat_hewan{
  //berat hewan disimpan dalam bentuk kg
  var h0;
  var h1;
  var h2;
}

class Mobil{
  // property berat max dalam kg
  int maxkg = 100;
  int temp = 0;

  //property list nama;
  var list_hewan = [];

  //method tambah muatan
  tambah(String hewan, int berat){
    if (maxkg != 0){
      list_hewan.add(hewan);
      maxkg -= berat;
    }
    temp += berat; 
  }

  //method total muatan
  total(){
    print(temp);
  }
}

void main(List<String> args) {
  //inisialisasi object 
  var berat_hewan = Berat_hewan();
  var mobil = Mobil();

  //inisialisasi property melalui object
  berat_hewan.h0 = 10;
  berat_hewan.h1 = 20;
  berat_hewan.h2 = 30;

  //using method tambah to add
  mobil.tambah('anjing', berat_hewan.h0);
  mobil.tambah('kambing', berat_hewan.h1);
  mobil.tambah('rusa', berat_hewan.h2);
  print('daftar hewan yang diangkut = ${mobil.list_hewan}');

  //using method total to sum
  stdout.write('total kg hewan yang diangkut mobil = ');
  print ('${mobil.total()}');
}
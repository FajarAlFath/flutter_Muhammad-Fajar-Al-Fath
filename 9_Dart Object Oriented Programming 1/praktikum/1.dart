//soal no 1
import 'dart:io';

class Berat_hewan{
  //berat hewan disimpan dalam bentuk kg
  var h0;
  var h1;
  var h2;
  var h3;
}

class Mobil{
  //berat dalam kg
  int maxkg = 100;
  var list_hewan = [];

  //method tambah muatan
  tambah(String hewan){
    if (maxkg != 0){
      list_hewan.add(hewan);
    }
  }

  //method total muatan
  total(){

  }
}

void main(List<String> args) {
  var berat_hewan = Berat_hewan();
  var mobil = Mobil();
  berat_hewan.h0 = 10;
  print(berat_hewan.h0);
  mobil.list_hewan.add('kucing');
  print(mobil.list_hewan[0]);



}
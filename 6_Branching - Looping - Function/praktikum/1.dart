//import library
import 'dart:io';

//function nilai
nilai(int n){
  String value;
  if(n > 70){
    return value = 'A';
  }
  else if (n > 40){
   return value = 'B';
  }
  else if (n > 0){
    return value = 'C';
  }
  else{
    return value = 'kosong';
  }
}

//function lulus
lulus(String hasil){
  String pesan;
  if(hasil == 'A'){
    return pesan = 'Selamat anda Cumlaude';
  }
  else if(hasil == 'B'){
    return pesan = 'Selamat anda lulus';
  }
  else if(hasil == 'C'){
    return pesan = 'Mohon maaf anda gagal, mohon coba lagi';
  }
  else{
    return pesan = 'Mohon maaf anda tidak lulus';
  }
}

void main(){
  print ('masukkan nilai : ');
  int? n = int.parse(stdin.readLineSync()!);

  var hasil = nilai (n);
  print ('nilai anda $hasil');

  var condition = lulus(hasil);
  print('$condition');
  }
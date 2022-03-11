import 'balok.dart';
import 'kubus.dart';
import 'dart:io';

class Bangunruang{
  volume(){
    print ('Menghitung Volume');
  }  
}

void main(List<String> args) {
  var balok = Balok();
  var kubus = Kubus();

  print('input data kubus');
  stdout.write('input sisi: ');
  kubus.sisi = int.parse(stdin.readLineSync()!);

  print('\ninput data balok');
  stdout.write('input panjang: ');
  balok.panjang = int.parse(stdin.readLineSync()!);
  stdout.write('input lebar: ');
  balok.lebar = int.parse(stdin.readLineSync()!);
  stdout.write('input tinggi: ');
  balok.tinggi = int.parse(stdin.readLineSync()!);

  //using method volume
  balok.volume();
  kubus.volume();
}
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

  stdout.write('input sisi');
  kubus.sisi = int.parse(stdin.readLineSync()!);
}
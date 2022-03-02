//import library
import 'dart:io';

//fungsi faktorial
double faktorial (int f){
  double a = 1;
  for (var i = 1; i <= f; i +=1) {
    a *= i;
  } 
  return a;
}
void main() {
  print('===> Program pemfaktoran berbasis input output <===');
  //input bilangan yang ingin difaktorisasi
  print('input nilai: ');
  int? f = int.parse(stdin.readLineSync()!);
  var hasil = faktorial(f); 
  print('hasil faktorial adalah $hasil');
}
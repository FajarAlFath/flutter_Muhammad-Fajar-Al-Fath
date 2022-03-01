//import library
import 'dart:io';

//fungsi faktorial
faktorial (int f){
  int a = 1;
  for (var i = 1; i <= f; i +=1) {
    a *= i;
  } 
  return a;
}
void main() {
  print('===> Program pemfaktoran berbasis input output <===');
  print('input nilai: ');
  int? f = int.parse(stdin.readLineSync()!);
  int hasil = faktorial(f); 
  print('hasil faktorial adalah $hasil');
}
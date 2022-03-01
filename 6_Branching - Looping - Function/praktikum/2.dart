//impoort library
import 'dart:io';

//fungsi faktorial
faktorial (int f){
  int a = 1;
  for (var i = 0; i <= f; i++) {
    a *= i;
  } 
  return a;
}
void main() {
  print('===> Program pemfaktoran <===');
  print('input nilai: ');

  int? f = int.parse(stdin.readLineSync()!);
  int hasil = faktorial(f); 
}
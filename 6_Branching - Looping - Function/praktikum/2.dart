//import library
import 'dart:io';

//fungsi faktorial
double? faktorial (int f){
  double a = 1;
  for (var i = 1; i <= f; i +=1) {
    a *= i;
  } 
  return a;
}
void main() {
  print('===> Program pemfaktoran berbasis input output <===');

  //input bilangan yang ingin difaktorisasi
  stdout.write('input bilangan : '); 
  int? a = int.parse(stdin.readLineSync()!);
  var hasil = faktorial(a);
  print ('hasil penfaktoran $hasil'); 
}
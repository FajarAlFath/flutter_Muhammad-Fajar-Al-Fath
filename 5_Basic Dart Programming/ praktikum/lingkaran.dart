// libary for input output
import 'dart:io';

// class main
void main() {
  print('===== Program mencari luas lingkaran =====');
  stdout.write('Tentukan nilai r = ');
  double s = double.parse(stdin.readLineSync()!);

  // pemanggilan fungsi rumus
  double hasil = rumus(s);
  print('Luas lingkaran tersebut adalah $hasil');
} 

// inisialisasi fungsi rumus
double rumus(double r){
  double phi = 3.14;
  return phi*r*r;
}

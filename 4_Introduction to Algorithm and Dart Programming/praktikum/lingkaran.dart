import 'dart:io';
void main() {
  print('===== Program mencari luas lingkaran =====');
  stdout.write('Tentukan nilai r = ');
  double s = double.parse(stdin.readLineSync()!);

  double hasil = rumus(s);
  print('Luas lingkaran tersebut adalah $hasil');
} 

double rumus(double r){
  double phi = 3.14;
  return phi*r*r;
}

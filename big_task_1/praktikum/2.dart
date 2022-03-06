import 'dart:io';

fungsi(int n){
   if (n > 180){
     return (n - 180);
   }
   else{
     return (n + 180);
   }
}

void main(){
  stdout.write('input angka: ');
  int? n = int.parse(stdin.readLineSync()!);
  int a = fungsi(n);

  if (a <= 0) {
    print('hasil 0');
  }
  else if (a >= 360){
    print('hasil 0');
  }
  else {
    print(a);
  }
}
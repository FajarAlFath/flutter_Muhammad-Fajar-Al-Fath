import 'dart:io';

diagonal (int n){
  for (int i= 1;i <= n;i++) {
    for (int b = 0; b <= i; b++) {
      stdout.write(' ');
    }
    print(i);
  }
}

void main(List<String> args) {
  stdout.write('masukkan angka: ');
  int? n = int.parse(stdin.readLineSync()!);
  diagonal(n);  
}
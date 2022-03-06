import 'dart:io';

diagonal (int n){
  for (int i=0;i <= n;i++) {
    for (int b = i; b>=1; b--) {
      if (i == b){
        stdout.writeln('$i');
      }
      else{
        stdout.write(' ');
      }
    }
  }
}

void main(List<String> args) {
  stdout.write('masukkan angka: ');
  int? n = int.parse(stdin.readLineSync()!);
  diagonal(n);  
}
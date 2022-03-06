import 'dart:io';

void main(List<String> args) {
  stdout.write('input jumlah ');
  int? n = int.parse(stdin.readLineSync()!);
  jamatas(n);
  //jambawah(n);
}

jamatas(int tinggi){
  for (var a = 1; a <= 5; a++) {
    for(var b=1;b<=tinggi;b++ ){
      stdout.write('*');
    }
    tinggi--;
    print('');
  }
}

jambawah(int tinggi){
  for (var i = tinggi; i >=1; i--) {
    
  }
}
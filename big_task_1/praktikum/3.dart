import 'dart:io';

void main(List<String> args) {
  stdout.write('input jumlah ');
  int? n = int.parse(stdin.readLineSync()!);
  jamatas(n);
  jambawah(n);
  //jambawah(n);
}

jambawah(int tinggi){
  for (var i = 1; i <= tinggi; i++) {
    for (var f = i; f <= tinggi; f++) {
      stdout.write(' ');
    }
    for (var f = 1; f < i; f++) {
      stdout.write('o');
    }
    for (var f = 1; f <= i; f++) {
      stdout.write('o');
    }
    print('');
  }
}

jamatas(int tinggi){
  for (var i = 1; i <= tinggi; i++) {
    for (var f = 1; f <= i; f++) {
      stdout.write(' ');
    }
    for (var f = i; f < tinggi; f++) {
      stdout.write('o');
    }
    for (var f = i; f <= tinggi; f++) {
      stdout.write('o');
    }
    print('');
  }
}
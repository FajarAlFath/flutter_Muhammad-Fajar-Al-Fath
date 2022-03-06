String cek(int n){
  if (n % 2 == 0) {
    return ('bilangan genap');
  }
  else{
    return ('bilangan ganjil');
  }
}

void main(){
  var hasil = cek(8);
  print('angka 8 merupakan $hasil');
  hasil = cek(9);
  print('angka 9 merupakan $hasil');
}
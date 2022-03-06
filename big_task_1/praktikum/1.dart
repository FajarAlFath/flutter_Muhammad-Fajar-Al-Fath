bool cek(int n){
  if (n % 2 == 0) {
    return true;
  }
  else{
    return false;
  }
}

void main(){
  var hasil = cek(8);
  print('angka 8 merupakan bilangan genap? $hasil');
  hasil = cek(9);
  print('angka 9 merupakan bilangan genap? $hasil');
}
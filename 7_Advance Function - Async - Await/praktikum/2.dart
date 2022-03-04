void main() {
  print('====================  Program soal kedua map  ====================\n');
  
  var Alamat= ['Jakarta','Aceh','Medan'];
  var nama = ['Annas','Andi','Anto'];
  var initiate = [];
  initiate.add(Alamat);
  initiate.add(nama);
  print('Isi dari list sebagai berikut: $initiate');

  var asal = {};
  for (var i = 0; i <= 2 ; i++) {
    for (var n = 0; i <= 2; i++) {
    asal[initiate[n][i]]=initiate[1][i];
    print('$n dan $i');
    }
  }
 print('map yang telah dibuat berdasarkan list: $asal');
 print('\n====================  Selesai  ====================');
}
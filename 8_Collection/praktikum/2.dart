void main() {
  print('====================  Program soal kedua map  ====================\n');
  
  var Alamat= ['Jakarta','Aceh','Medan'];
  var nama = ['Annas asal ','Andi asal ','Anto asal '];
  var initiate = [];
  initiate.add(nama);
  initiate.add(Alamat);
  print('Isi dari list sebagai berikut: $initiate');

  var asal = {};
  for (var i = 0; i <= 2 ; i++) {
    asal[initiate[0][i]]=initiate[1][i];
  }

 print('hasil nya sebagai berikut : ');
 print(asal);
 print('\n====================  Selesai  ====================');
}
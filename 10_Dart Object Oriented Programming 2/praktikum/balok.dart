import 'bangunruang.dart';

class Balok extends Bangunruang{
  //setiap property dalam cm
 
  @override
  volume() {
    var hasil = panjang*tinggi*lebar;
    print('Volume balok adalah $hasil');
  }
}
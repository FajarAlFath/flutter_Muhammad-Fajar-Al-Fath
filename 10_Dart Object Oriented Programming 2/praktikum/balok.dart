import 'bangunruang.dart';


class Balok extends Bangunruang{
  //setiap property dalam cm
 
  @override
  volume() {
    var hasil = super.panjang*super.tinggi*super.lebar;
    print('Volume balok adalah $hasil');
  }
}
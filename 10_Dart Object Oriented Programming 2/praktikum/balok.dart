import 'bangunruang.dart';

class Balok extends Bangunruang{
  //setiap property dalam cm
  var panjang;
  var tinggi;
  var lebar;

  @override
  volume() {
    var hasil = panjang*tinggi*lebar;
    print(hasil);
  }
}
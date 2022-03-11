import 'bangunruang.dart';

class Kubus extends Bangunruang{
  //setiap property dalam cm
  var sisi;

  @override
  volume() {
    var hasil = sisi*sisi*sisi;
    print ('Volume kubus adalah $hasil');
  }
}
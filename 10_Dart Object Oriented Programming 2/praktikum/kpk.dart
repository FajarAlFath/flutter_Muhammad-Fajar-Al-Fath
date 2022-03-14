//faktor persekutuan terkecil atau kelipatan persekutuan terkecil(kpk)
import 'dart:io';
import 'package:dart_application_1/matematika.dart';

class Kpk extends Matematika{
  var x;
  var y;
  Kpk(){
    this.x;
    this.y;
  }  

  @override
  hitung(x,y) {
    // TODO: implement hitung
    int i;
    if(x > y){
      i = x;
      x = y;
      y = i;
    }
    while(x > 0){
      i = y % x;
      y = x;
      x = i;
    }
    return y;
  }
}

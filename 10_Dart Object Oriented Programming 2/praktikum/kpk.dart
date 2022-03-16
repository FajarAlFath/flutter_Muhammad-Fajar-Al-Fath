//faktor persekutuan terkecil atau kelipatan persekutuan terkecil(kpk)
import 'matematika.dart';

class Kpk implements Matematika{
  var x;
  var y;
  Kpk(){
    this.x;
    this.y;
  }  

  @override
  hitung(x,y) {
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

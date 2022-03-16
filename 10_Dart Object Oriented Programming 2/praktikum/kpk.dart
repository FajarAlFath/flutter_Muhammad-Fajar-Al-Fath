//faktor persekutuan terkecil atau kelipatan persekutuan terkecil(kpk)
import 'matematika.dart';

class Kpk implements Matematika{
  var x;
  var y;
  var hasil;

  Kpk(){
    x = 0;
    y = 0;
  }  

  @override
  hitung1(x,y) {
     while (y!=0) {
      hasil = x%y;
      x=y;
      y=hasil;
    }
    return x;
  } 

  @override
  hitung(x,y){
    hasil = x*y / hitung1(x, y);
    print(hasil);
  }
}

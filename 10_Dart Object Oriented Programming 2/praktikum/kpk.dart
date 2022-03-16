//faktor persekutuan terkecil atau kelipatan persekutuan terkecil(kpk)
import 'matematika.dart';

class Kpk implements Matematika{
  var x;
  var y;
  var hasil;

  Kpk(){
    this.x;
    this.y;
  }  

  @override
  hitung(x,y) {
    for (var i = 1; i <= y; i++) {
    hasil+=x;
    if(hasil%y==0){
      print('kpk = $hasil');
    }
   }    
  }
}

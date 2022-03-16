//faktor persekutuan terbesar (fpb)
import 'matematika.dart';

class Fpb implements Matematika{
  var x;
  var y;
  var hasil;

  Fpb(){
    this.x;
    this.y;
  }

  @override
  hitung(x, y) {
    hasil = x%y;
    while (hasil!=0) {
      x=y;
      y=hasil;
      hasil=x%y;
    }
    return y;
  } 
}
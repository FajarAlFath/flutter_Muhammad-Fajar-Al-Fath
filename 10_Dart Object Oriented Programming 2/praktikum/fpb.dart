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
    while (y!=0) {
      hasil = x%y;
      x=y;
      y=hasil;
    }
    print(x);
  } 
}
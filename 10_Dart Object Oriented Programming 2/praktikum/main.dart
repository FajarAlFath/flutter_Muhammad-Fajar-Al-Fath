import 'matematika.dart';
import 'kpk.dart';
import 'fpb.dart';

void main(List<String> args) {
  print('===== program menghitung fpb dan kpk =====');
  var fpb = Fpb();
  var kpk = Kpk();

  fpb.hitung(3, 5);
  kpk.hitung(2, 5);

  print(kpk);
  print(fpb);
}
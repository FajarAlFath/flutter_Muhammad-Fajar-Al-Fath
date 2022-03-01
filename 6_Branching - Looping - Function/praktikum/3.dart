import '2.dart';

void main(List<String> args) {
 int n = 30;
 int faktorial = 1;
 for (var i = 1; i <= n; i++) {
   faktorial *= i;
 } 
 print('hasil $faktorial');
}
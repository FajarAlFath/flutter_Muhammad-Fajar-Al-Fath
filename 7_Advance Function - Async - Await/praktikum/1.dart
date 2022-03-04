import 'dart:io';

Future f1(var a, var kali)async{
  await Future.delayed(Duration(seconds: 1),(){
    var d = [];
    for (var c in a) {
      var e = c*kali;
      d.add(e);
    }
    print(d);
  });
}

//fungsi masih tahap pengembangan
/*Future f2()async{
  var list = [];
  await Future.delayed(Duration(seconds: 1),(){
    print('input 5 angka: ');
    for (var i = 0; i <= 4; i++) {
      int? a = int.parse(stdin.readLineSync()!);
      list.add(a);
    }
  });
  print(list);
}*/

void main()async{
  print('=============== Soal no 1 ===============');
  var a = [1,2,3,4,5,6,7,8,9,10];
  await f1(a, 10);
  
}
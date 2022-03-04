//fungsi future f1
Future f1(var a, var kali)async{
  Future.delayed(Duration(seconds: 1),(){
    var d = [];
    for (var c in a) {
      var e = c*kali;
      d.add(e);
    }
    print('list setelah dikali $d');
  });
}

void main()async{
  print('=============== Soal no 1 ===============');
  var a = [1,2,3,4,5,6,7,8,9,10];
  print('List awal $a');
  await f1(a, 10);
  
}
# 10_Dart Object Oriented Programming 2
## Resume
pada section ini telah dipelajari OOP advance pada bahasa pemogran dart. Tidak jauh berbeda dengan OOP lainnya konsep OOP dalam dart masih sama. Berikut poin-poin yang telah ditangkap pada section 10:
## 1. Constructor yang membuat objek simple dan Overriding si peniru method bagi inheritance
Constructor pada dasarnya merupakan method hanya saja berbeda dengan method biasa, constructor dibuat agar objek yang diciptakan dapat langsung menerima data berdasarkan parameter yang telah diberikan. Inheritance pada OOP merupakan sebuah class anak dari class induk yang dapat mewarisi property ataupun method dari class induk tersebut. Inheritance ditandai dengan extends. Overriding merupakan teknik untuk menulis method yang sama dari class induk akan tetapi mengubah proses didalamnya.
```dart
class Manusia {
    Manusia(){
        var mata = 2;
        var kaki = 2;
        var tangan = 2;
    }

    menghitung(int a, int b){
        var c = a+b;
    }
}

Class Anak extends Manusia{
    @override
    menghitung(int a, int b){
        var c = a*b;
    }
}
```
## 2. HELLO WORLD
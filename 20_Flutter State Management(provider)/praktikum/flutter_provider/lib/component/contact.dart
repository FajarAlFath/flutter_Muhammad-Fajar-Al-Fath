import 'package:flutter/foundation.dart';
import 'package:flutter_provider/model.dart';

class Contact extends ChangeNotifier{
  final List<Getkontak> _kontak = [];
  List<Getkontak> get kontak => _kontak;

  void add(Getkontak kontak){
    _kontak.add(kontak);
    notifyListeners();
  }

}
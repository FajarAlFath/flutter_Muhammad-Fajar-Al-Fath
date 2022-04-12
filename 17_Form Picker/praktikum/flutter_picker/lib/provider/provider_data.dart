import 'package:flutter/material.dart';
import 'data.dart';

class Item extends ChangeNotifier {
  final _item = <Data>[];
  List<Data> get item => List.from(_item);

  void addItem(Data data) {
    _item.add(data);
    notifyListeners();
  }
}

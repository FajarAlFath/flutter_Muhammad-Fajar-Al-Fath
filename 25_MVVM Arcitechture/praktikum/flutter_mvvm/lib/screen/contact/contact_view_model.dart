import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm/model/api/contact_api.dart';
import 'package:flutter_mvvm/model/contact_model.dart';

class ContactViewModel extends ChangeNotifier{
  List<Contact> _contact = [];
  List<Contact> get contacts => _contact;

  getAll() async{
    final e = await ContactAPI.getContact();
    _contact = e;
    notifyListeners();
  }
}
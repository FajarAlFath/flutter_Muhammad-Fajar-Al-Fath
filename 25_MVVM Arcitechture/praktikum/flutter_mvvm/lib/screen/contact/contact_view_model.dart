import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm/model/api/contact_api.dart';
import 'package:flutter_mvvm/model/contact_model.dart';

class ContactViewModel with ChangeNotifier{
  List<Contact> _contact = [];
  List<Contact> get contacts => _contact;

  getAllContacts() async{
    final c = await ContactAPI.getContact();
    _contact = c;
    notifyListeners();
  }
}
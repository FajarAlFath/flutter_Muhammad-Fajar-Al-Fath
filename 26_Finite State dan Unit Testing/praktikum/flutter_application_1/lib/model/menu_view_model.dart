import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/api/menu_api.dart';
import 'package:flutter_application_1/model/menu_model.dart';

enum MenuViewState { none, loading, error }

class MenuViewModel extends ChangeNotifier {
  MenuViewState _state = MenuViewState.none;
  MenuViewState get state => _state;

  List<Menu> _menus = [];
  List<Menu> get menus => _menus;

  changeState(MenuViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllMenu() async {
    changeState(MenuViewState.loading);

    try {
      final m = await MenuAPI.getMenu();
      _menus = m;
      notifyListeners();
      changeState(MenuViewState.none);
    } catch (e) {
      changeState(MenuViewState.error);
    }
  }
}

import 'package:flutter_application_1/model/api/menu_api.dart';
import 'package:test/test.dart';

void main(){
  test('get all menu returns data', () async{
    var menus = await MenuAPI.getMenu();
    expect(menus.isNotEmpty, true);
  });
}
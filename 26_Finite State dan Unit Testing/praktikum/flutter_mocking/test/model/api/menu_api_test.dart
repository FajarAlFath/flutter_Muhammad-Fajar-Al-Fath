import 'package:flutter_mocking/model/menu_model.dart';
import 'package:test/test.dart';
import 'package:flutter_mocking/api/menu_api.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'menu_api_test.mocks.dart';

@GenerateMocks([MenuAPI])
void main(){

  group('MenuAPI', (){

    MenuAPI menuAPI = MockMenuAPI();

    test('get all menus returns data', () async{
      when(menuAPI.getMenu()).thenAnswer(
        (_) async => <Menu>[
          Menu(id: 1, name: 'a'),
        ],
      );

      var menus = await menuAPI.getMenu();
      expect(menus.isNotEmpty, true);
    });
  });
}
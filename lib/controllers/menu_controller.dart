import '../model/menu.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final menu = Menu().obs;

  static MenuController get to => Get.find<MenuController>();

  setMenu(Menu restaurantMenu) {
    menu(restaurantMenu);
  }

  setMenuName(String name) {
    menu.update((menuObject) {
      menuObject.name = name;
    });
  }

  setMenuColor(String color) {
    menu.update((menuObject) {
      menuObject.color = color;
    });
  }

  setMenuLocation(String location) {
    menu.update((menuObject) {
      menuObject.location = location;
    });
  }
}

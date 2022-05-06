import 'package:flutter/cupertino.dart';
import 'package:flutter_clock/enums.dart';

class MenuInfo extends ChangeNotifier {
  MenuType menuType;
  String? title;
  IconData? imageSource;
  MenuInfo(this.menuType, {this.title, this.imageSource});
  updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.imageSource = menuInfo.imageSource;
    notifyListeners();
  }
}

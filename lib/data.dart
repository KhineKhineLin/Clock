import 'package:flutter/material.dart';
import 'package:flutter_clock/enums.dart';
import 'package:flutter_clock/menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', imageSource: Icons.lock_clock),
  MenuInfo(MenuType.alarm, title: 'Alarm', imageSource: Icons.alarm),
  MenuInfo(MenuType.timer, title: 'Timer', imageSource: Icons.timer),
  MenuInfo(MenuType.stopwatch,
      title: 'Stopwatch', imageSource: Icons.stop_circle)
];

import 'package:flutter/material.dart';
import 'package:flutter_clock/constants/theme_data.dart';
import 'package:flutter_clock/enums.dart';
import 'package:flutter_clock/menu_info.dart';
import 'package:flutter_clock/models/alarm_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', imageSource: Icons.lock_clock),
  MenuInfo(MenuType.alarm, title: 'Alarm', imageSource: Icons.alarm),
  MenuInfo(MenuType.timer, title: 'Timer', imageSource: Icons.timer),
  MenuInfo(MenuType.stopwatch,
      title: 'Stopwatch', imageSource: Icons.stop_circle)
];
List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Office', gradientColors: GradientColors.sky),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),
      description: 'Sport', gradientColors: GradientColors.sunset)
];

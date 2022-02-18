import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class BottomBarItem {
  BottomNavigationBarItem bottomBarItem(
      {required int currentIndex,
      required int compareIndex,
      required String iconPath,
      required String label,
      double? iconSize}) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          iconPath,
          width: iconSize ?? kBottomNavigationBarHeight * 0.50,
          color: currentIndex == compareIndex ? allColor.primary : null,
        ),
        label: label);
  }
}

final bottomBarItem = BottomBarItem();

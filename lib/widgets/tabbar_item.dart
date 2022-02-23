import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class TabBarItem extends StatelessWidget {
  final String label;
  final Function() onTap;
  final int currentIndex;
  final int compareIndex;
  TabBarItem(
      {Key? key, required this.label, required this.currentIndex, required this.compareIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: currentIndex == compareIndex ? allColor.primary : allColor.grey,
            borderRadius: BorderRadius.circular(3)),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

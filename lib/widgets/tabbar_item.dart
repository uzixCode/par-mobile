import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        height: Get.height * 0.05,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: currentIndex == compareIndex ? allColor.primary : allColor.grey,
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          label,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class TabBarItem extends StatelessWidget {
  final String label;
  final Function() onTap;
  final int currentIndex;
  final int compareIndex;
  final EdgeInsets padding;
  final Color? color;
  const TabBarItem(
      {Key? key,
      required this.label,
      required this.currentIndex,
      required this.compareIndex,
      required this.onTap,
      required this.padding,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //height: Get.height * 0.06,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: currentIndex == compareIndex
                ? color != null
                    ? color
                    : allColor.primary
                : allColor.grey,
            borderRadius: BorderRadius.circular(5)),
        padding: padding,
        child: Text(
          label,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: Get.width * 0.03,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

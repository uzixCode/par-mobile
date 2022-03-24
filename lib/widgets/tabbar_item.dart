import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class TabBarItem extends StatelessWidget {
  final String label;
  final Function() onTap;
  final int currentIndex;
  final int compareIndex;
  final EdgeInsets padding;
  int? maxLines;
  final Color? color;
  EdgeInsetsGeometry? margin;
  double size = Get.width * 0.03;
  TabBarItem(
      {Key? key,
      required this.label,
      required this.currentIndex,
      required this.compareIndex,
      required this.onTap,
      required this.padding,
      this.color,
      this.margin,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        height: maxLines! < 2 ? null : size * maxLines!.toDouble(),
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
          maxLines: maxLines,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: size, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

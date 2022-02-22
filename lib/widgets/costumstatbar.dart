import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class CostumStatBar extends StatelessWidget {
  CostumStatBar(
      {Key? key,
      required this.height,
      required this.width,
      required this.persentage,
      this.barColor = Colors.grey,
      this.progressColor = Colors.green,
      this.alignment = Alignment.centerLeft})
      : super(key: key);
  double height;
  double width;
  double persentage;
  Color barColor;
  Color progressColor;
  AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.antiAlias,
      alignment: alignment,
      decoration: BoxDecoration(
          color: barColor, borderRadius: BorderRadius.circular(Get.width)),
      child: LayoutBuilder(
        builder: (context, parent) => UnconstrainedBox(
          child: Container(
            height: parent.maxHeight,
            width: (parent.maxWidth / 100) * persentage,
            color: progressColor,
          ),
        ),
      ),
    );
  }
}

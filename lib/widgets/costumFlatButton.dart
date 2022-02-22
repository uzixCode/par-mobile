import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostumFlatButton extends StatelessWidget {
  CostumFlatButton({Key? key, required this.child, this.color, this.padding})
      : super(key: key);
  Widget child;
  Color? color;
  EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(Get.width * 0.015)),
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: child,
      ),
    );
  }
}

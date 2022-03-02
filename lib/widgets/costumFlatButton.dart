import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostumFlatButton extends StatelessWidget {
  CostumFlatButton(
      {Key? key,
      required this.child,
      this.color,
      this.padding,
      this.border,
      this.onTap,
      this.borderRadius})
      : super(key: key);
  Widget child;
  Color? color;
  EdgeInsets? padding;
  BoxBorder? border;
  double? borderRadius;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: border,
          color: color,
          borderRadius:
              BorderRadius.circular(borderRadius ?? Get.width * 0.015),
        ),
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: child,
        ),
      ),
    );
  }
}

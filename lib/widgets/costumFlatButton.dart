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
      this.borderRadius,
      this.height,
      this.width})
      : super(key: key);
  Widget child;
  Color? color;
  EdgeInsets? padding;
  BoxBorder? border;
  double? borderRadius;
  void Function()? onTap;
  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
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

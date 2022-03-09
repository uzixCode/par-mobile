import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      required this.child,
      this.alignment,
      this.onTap,
      this.color,
      this.padding})
      : super(key: key);
  Widget child;
  Color? color;
  void Function()? onTap;
  AlignmentGeometry? alignment;
  EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Get.width * 0.02),
        ),
        child: Padding(
            padding:
                padding ?? EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Center(child: child)),
      ),
    );
  }
}

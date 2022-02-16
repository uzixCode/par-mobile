import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({Key? key, required this.child, this.alignment, this.color})
      : super(key: key);
  Widget child;
  Color? color;
  void Function()? onTap;
  AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(Get.width)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: child),
      ),
    );
  }
}

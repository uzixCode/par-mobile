import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  RectangleButton({Key? key, required this.child, this.alignment, this.onTap, this.color}) : super(key: key);
  Widget child;
  Color? color;
  void Function()? onTap;
  AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: child),
      ),
    );
  }
}

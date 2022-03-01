import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class TableTile extends StatelessWidget {
  TableTile({
    Key? key,
    required this.content,
    this.background,
    this.fontColor,
    this.padding,
    this.notUseBorder,
  }) : super(key: key);
  Color? background;
  String content;
  Color? fontColor;
  EdgeInsetsGeometry? padding;
  bool? notUseBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.zero,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: background ?? Colors.white,
            border: notUseBorder == null || !notUseBorder!
                ? Border.all(
                    width: 0.5,
                    color: Colors.white,
                  )
                : null),
        child: LayoutBuilder(
          builder: (context, constraints) => Text(
            content,
            style: TextStyle(
              color: fontColor ?? Colors.black,
            ),
          ),
        ));
  }
}

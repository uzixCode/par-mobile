import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class DataTileCard extends StatelessWidget {
  DataTileCard(
      {Key? key,
      this.label,
      this.elevetion = 5,
      this.background = Colors.white,
      this.controller,
      this.readonly = false,
      this.border = const BorderSide(),
      this.padding,
      this.suffixIcon})
      : super(key: key);
  String? label;
  double elevetion;
  Color background;
  TextEditingController? controller;
  bool? readonly;
  BorderSide border;
  EdgeInsetsGeometry? padding;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (label != null)
        SizedBox(
          height: 15,
        ),
      if (label != null)
        Text(
          label!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ).paddingOnly(left: 2),
      if (label != null)
        SizedBox(
          height: 5,
        ),
      Container(
        margin: EdgeInsets.all(2),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(Get.width * 0.015),
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: elevetion,
            ),
          ],
        ),
        child: Card(
            margin: EdgeInsets.zero,
            elevation: 0, //elevetion,
            color: background,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Get.width * 0.015)),
            child: RoundedTextField(
              suffixIcon: suffixIcon,
              padding: padding,
              readOnly: readonly,
              controller: controller,
              borderSide: elevetion < 1 ? border : BorderSide.none,
            )),
      )
    ]);
  }
}

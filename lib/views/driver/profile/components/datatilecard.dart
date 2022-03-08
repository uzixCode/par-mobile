import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class DataTileCard extends StatelessWidget {
  DataTileCard(
      {Key? key,
      required this.label,
      this.elevetion = 5,
      this.background = Colors.white,
      this.controller,
      this.readonly = false})
      : super(key: key);
  String label;
  double elevetion;
  Color background;
  TextEditingController? controller;
  bool? readonly;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 15,
      ),
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold),
      ).paddingOnly(left: 2),
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
              readOnly: readonly,
              controller: controller,
              borderSide: BorderSide.none,
            )),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

TableRow tableRowContent(
    {required String title,
    required String valueContent,
    Widget? widgetCustom,
    BoxBorder? border =
        const Border(bottom: BorderSide(color: Colors.white))}) {
  return TableRow(
    decoration: BoxDecoration(border: border),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: Get.width * 0.035),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: widgetCustom ??
            Text(
              ": $valueContent",
              style:
                  TextStyle(color: Colors.white, fontSize: Get.width * 0.035),
            ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';

TableRow tableRowContent(
    {required String title, required String valueContent, required bool isCustomContent, Widget? widgetCustom}) {
  return TableRow(
    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: (isCustomContent)
            ? widgetCustom
            : Text(
                ": $valueContent",
                style: const TextStyle(color: Colors.white),
              ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class CheckupTiles extends StatelessWidget {
  CheckupTiles({Key? key, required this.label, this.child}) : super(key: key);
  String label;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ).paddingOnly(bottom: 8),
          child ?? Container()
        ],
      ),
    );
  }
}

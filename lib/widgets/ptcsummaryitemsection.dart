import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

import '../constants/all_color.dart';

class PTCSummaryItemSection extends StatelessWidget {
  final String merkCar;
  final String platNomor;
  final Function() onTap;
  const PTCSummaryItemSection(
      {Key? key,
      required this.merkCar,
      required this.platNomor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text("$merkCar - $platNomor",
                maxLines: 2,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: Get.width * 0.035)),
          ),
          SizedBox(
            width: Get.width * 0.27,
            child: RectangleButton(
              onTap: onTap,
              color: allColor.primary,
              alignment: Alignment.center,
              child: Text(
                "Lihat",
                style: TextStyle(
                    fontSize: Get.width * 0.04,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/all_color.dart';
import '../../../../widgets/tablerow_content.dart';

class TableDCUSection extends StatelessWidget {
  const TableDCUSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: allColor.secondary, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: const {1: FractionColumnWidth(0.7)},
          children: [
            tableRowContent(title: 'Pengemudi', valueContent: 'Bambang Wijaya'),
            tableRowContent(
              title: 'Unit Kerja',
              valueContent: 'BD - BD',
            ),
            tableRowContent(
              title: 'Plat Nomor',
              valueContent: 'B 1234 JK',
            ),
            tableRowContent(
                title: 'Temperature',
                valueContent: '',
                widgetCustom: RichText(
                  text: TextSpan(
                    text: ': 39 C ',
                    style: TextStyle(
                        color: Colors.white, fontSize: Get.width * 0.035),
                    children: <TextSpan>[
                      TextSpan(
                          text: '(HIGH)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: Get.width * 0.035)),
                    ],
                  ),
                )),
            tableRowContent(
                title: 'Tekanan Darah',
                valueContent: '',
                widgetCustom: RichText(
                  text: TextSpan(
                    text: ': 120/90 ',
                    style: TextStyle(
                        color: Colors.white, fontSize: Get.width * 0.035),
                    children: <TextSpan>[
                      TextSpan(
                          text: '(HIGH)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.035,
                              color: Colors.white)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

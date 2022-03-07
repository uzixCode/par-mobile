import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';
import 'package:par_mobile/widgets/tablerow_content.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Berikan Keputusan Untuk Hasil Daily Check Up Dengan Rincian Sebagai Berikut",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: allColor.primary, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: allColor.secondary,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  columnWidths: const {1: FractionColumnWidth(0.7)},
                  children: [
                    tableRowContent(
                        title: 'Pengemudi', valueContent: 'Bambang Wijaya'),
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
                          text: const TextSpan(
                            text: ': 39 C ',
                            style: TextStyle(color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '(HIGH)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                        )),
                    tableRowContent(
                        title: 'Tekanan Darah',
                        valueContent: '',
                        widgetCustom: RichText(
                          text: const TextSpan(
                            text: ': 120/90 ',
                            style: TextStyle(color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '(HIGH)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  child: RectangleButton(
                    onTap: () {},
                    color: allColor.primary,
                    alignment: Alignment.center,
                    child: Text(
                      "Approve Sementara",
                      style: TextStyle(
                          fontSize: Get.width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.35,
                  child: RectangleButton(
                    onTap: () {},
                    color: allColor.green,
                    alignment: Alignment.center,
                    child: Text(
                      "Cari Pengganti",
                      style: TextStyle(
                          fontSize: Get.width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

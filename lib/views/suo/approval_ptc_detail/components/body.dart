import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/form_item_request/form_item_request_page.dart';
import 'package:par_mobile/views/suo/form_service_ptc/form_service_ptc_page.dart';
import 'package:par_mobile/views/suo/form_wo_ptc/form_wo_page.dart';
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
              "Berikan Keputusan Untuk Assessment Pre Trip Check Dengan Rincian Berikut",
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
                      title: 'Pengemudi',
                      valueContent: 'Bambang Wijaya',
                    ),
                    tableRowContent(
                      title: 'Unit Kerja',
                      valueContent: 'BD - BD',
                    ),
                    tableRowContent(
                      title: 'Detail PTC',
                      valueContent: 'Keausan/Kondisi - Retak/Robek',
                    ),
                    tableRowContent(
                      title: 'Bagian PTC',
                      valueContent: 'Ban',
                    ),
                    tableRowContent(
                        title: 'Level',
                        valueContent: '',
                        widgetCustom: Row(
                          children: [
                            const Text(
                              ": ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: allColor.light_red,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.warning,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("HIGH",
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ],
                        )),
                    tableRowContent(
                      title: "No Telepon",
                      valueContent: '08123456789',
                    ),
                    tableRowContent(
                      title: 'Foto Kerusakan',
                      valueContent: '',
                      widgetCustom: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(": ",
                              style: TextStyle(color: Colors.white)),
                          Expanded(
                              child:
                                  Image.asset('assets/images/ban_sample.png')),
                        ],
                      ),
                    ),
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
                  width: Get.width * 0.35,
                  child: RectangleButton(
                    onTap: () {
                      Get.defaultDialog(
                          contentPadding: const EdgeInsets.all(20),
                          titlePadding: const EdgeInsets.all(10),
                          confirm: RectangleButton(
                              onTap: () {
                                Navigator.pop(context);
                                Get.to(FormServicePTCPage());
                              },
                              color: allColor.light_red,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Tidak, Beritahu Driver",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          cancel: RectangleButton(
                              onTap: () {
                                Navigator.pop(context);
                                Get.to(FormServicePTCPage());
                              },
                              color: allColor.green,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Approve Sementara",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          title: "Konfirmasi Perbaikan",
                          middleText: "Apakah kendaraan boleh beroperasi?",
                          radius: 5);
                    },
                    color: allColor.primary,
                    alignment: Alignment.center,
                    child: Text(
                      "Perbaikan",
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
                    onTap: () {
                      Get.to(FormItemRequestPage());
                    },
                    color: allColor.orange,
                    alignment: Alignment.center,
                    child: Text(
                      "Perlengkapan",
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

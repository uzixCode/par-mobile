import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/beranda/beranda_driver_page_controller.dart';
import 'package:par_mobile/controllers/driver_pool/beranda/beranda_driver_page_controller.dart';
import 'package:par_mobile/views/driver/beranda/components/stattile.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/callcenterfloatingbutton.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/costumTable.dart';
import 'package:par_mobile/widgets/costumstatbar.dart';

class BerandaDriverPoolPage extends StatelessWidget {
  BerandaDriverPoolPage({Key? key}) : super(key: key);
  BerandaDriverPoolPageController berandaDriverPageController =
      Get.put(BerandaDriverPoolPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CallCenterFloatingButton(),
        body: Column(
          children: [
            Card(
              elevation: 10,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Get.width * 0.05),
                  bottomRight: Radius.circular(Get.width * 0.05),
                ),
              ),
              color: allColor.primary,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width * 0.17,
                          height: Get.width * 0.17,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    "assets/images/background.png",
                                    cacheHeight: 183,
                                    cacheWidth: 183,
                                  ).image),
                              color: allColor.green,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Selamat Pagi,",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                "Uzix Code",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.04),
                              ),
                            ),
                            CostumTable(row: const [
                              [
                                Text(
                                  "DCU",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "   :   ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "No Data",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                              [
                                Text(
                                  "Clock In",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "   :   ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "No Data",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ]),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      berandaDriverPageController.dateFormat
                          .format(berandaDriverPageController.dateTimeNow),
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                BaseCard(
                  label: "INFO CLIENT",
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Uzix Code",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.045),
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/images/phone.png",
                                          width: Get.width * 0.065)
                                      .paddingOnly(right: 9),
                                  Text(
                                    "081 2345 6789",
                                    style:
                                        TextStyle(fontSize: Get.width * 0.04),
                                  )
                                ],
                              )
                            ],
                          ).paddingOnly(bottom: 8),
                          CostumTable(
                            row: const [
                              [
                                Text("Jabatan"),
                                Text("   :   "),
                                Text("Driver"),
                              ],
                              [
                                Text("Perusahaan"),
                                Text("   :   "),
                                Text("PT. Prima Armada Raya"),
                              ],
                              [
                                Text("Unit Kerja"),
                                Text("   :   "),
                                Text("GO - Head Office PAR"),
                              ],
                            ],
                          ),
                        ],
                      )),
                ),
                BaseCard(
                  label: "INFO KENDARAAN",
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uzix Code",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.045),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CostumTable(
                                  row: const [
                                    [
                                      Text("Model"),
                                      Text("   :   "),
                                      Text("BMW"),
                                    ],
                                    [
                                      Text("Tahun"),
                                      Text("   :   "),
                                      Text("2020"),
                                    ],
                                    [
                                      Text(
                                        "Masa Asuransi",
                                      ),
                                      Text("   :   "),
                                      Text(
                                        "01 Jan 2020000000000000000000000000",
                                      ),
                                    ],
                                    [
                                      Text("Masa KEUR"),
                                      Text("   :   "),
                                      Text("01 Jan 2020"),
                                    ],
                                    [
                                      Text("Uji Emisi"),
                                      Text("   :   "),
                                      Text("-"),
                                    ],
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      "PTC",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Get.width * 0.04),
                                    ),
                                    Image.asset(
                                      "assets/images/warning.png",
                                      width: Get.width * 0.17,
                                    ).paddingSymmetric(vertical: 8),
                                    Text("No Data"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                ),
                BaseCard(
                  label: "DASHBOARD",
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        StatTile(
                            label: "BATAS LEMBUR",
                            data: "0 Jam / 40 Jam (0%)",
                            persentage: 15),
                        StatTile(
                            label: "SERVICE",
                            data: "1000 Km / 10000 Km (50%)",
                            persentage: 50),
                        StatTile(
                            label: "BATAS PERDIN",
                            data: "4 Kali / 5 Kali (90%)",
                            persentage: 90)
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}

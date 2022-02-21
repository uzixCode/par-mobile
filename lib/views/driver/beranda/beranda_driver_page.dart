import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/beranda/beranda_driver_page_controller.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/costumTable.dart';

class BerandaDriverPage extends StatelessWidget {
  BerandaDriverPage({Key? key}) : super(key: key);
  BerandaDriverPageController berandaDriverPageController =
      Get.put(BerandaDriverPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: allColor.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/cs.png"),
          ),
        ),
        body: Column(
          children: [
            Card(
              elevation: 10,
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
                                  image: AssetImage(
                                      "assets/images/background.png")),
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
                            CostumTable(row: [
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
                                  style: const TextStyle(color: Colors.white),
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
                            row: [
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
                  trailing: CostumFlatButton(
                      color: allColor.red,
                      child: Text(
                        "Ganti Mobil",
                        style: TextStyle(color: Colors.white),
                      )).paddingOnly(right: 18),
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
                                child: Container(
                                  child: CostumTable(
                                    row: [
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
                                        Text("Masa Asuransi"),
                                        Text("   :   "),
                                        Text("01 Jan 2020"),
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
                )
              ],
            ))
          ],
        ));
  }
}

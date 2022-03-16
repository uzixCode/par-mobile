import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/beranda/beranda_driver_page_controller.dart';
import 'package:par_mobile/views/driver/beranda/components/stattile.dart';
import 'package:par_mobile/views/driver/profile/components/datatilecard.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/callcenterfloatingbutton.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/costumTable.dart';
import 'package:par_mobile/widgets/costumstatbar.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

import '../../../controllers/passanger/beranda/beranda_passanger_page_controller.dart';

class BerandaPassangerPage extends StatelessWidget {
  BerandaPassangerPage({Key? key}) : super(key: key);
  BerandaPassangerPageController berandaDriverPageController =
      Get.put(BerandaPassangerPageController());
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
                            Text(
                              "SUO/Korlap",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      berandaDriverPageController.dateFormat
                          .format(berandaDriverPageController.dateTimeNow),
                      textAlign: TextAlign.right,
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
                  label: "RANGKUMAN PTC BERMASALAH",
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            "AVANZA - B 6789",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.04),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: CostumFlatButton(
                              color: allColor.secondary,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Center(
                                child: Text(
                                  "Lihat",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                BaseCard(
                  label: "RANGKUMAN DCU BERMASALAH",
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            "Rohidin Sihite",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.04),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: CostumFlatButton(
                              color: allColor.secondary,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Center(
                                child: Text(
                                  "Lihat",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                BaseCard(
                    label: "STATUS WORKING ORDER",
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                    width: Get.width * 0.125,
                                    height: Get.width * 0.125,
                                    decoration: BoxDecoration(
                                        color: allColor.blue_1,
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      "assets/images/car.png",
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 8,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Darminto",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.width * 0.04),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CostumFlatButton(
                                                padding: EdgeInsets.all(8),
                                                borderRadius: Get.width,
                                                color: allColor.light_red
                                                    .withOpacity(0.2),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.warning,
                                                      color: allColor.light_red,
                                                      size: Get.width * 0.025,
                                                    ),
                                                    Text(
                                                      "HIGH",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: allColor
                                                              .light_red,
                                                          fontSize: Get.width *
                                                              0.025),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              CostumFlatButton(
                                                padding: EdgeInsets.all(8),
                                                borderRadius: Get.width,
                                                color: allColor.light_red
                                                    .withOpacity(0.2),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.alarm,
                                                      color: allColor.light_red,
                                                      size: Get.width * 0.025,
                                                    ),
                                                    Text(
                                                      "1 HARI",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: allColor
                                                              .light_red,
                                                          fontSize: Get.width *
                                                              0.025),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Tutup Oli & Dip Stick - Tidak Berfungsi Seal Bocor Seal Bocor Seal Bocor Seal Bocor",
                                        maxLines: 3,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: CostumFlatButton(
                                  padding: EdgeInsets.all(8),
                                  color: allColor.green_1.withOpacity(0.3),
                                  child: Center(
                                    child: Text(
                                      "B 1178 SAO",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: allColor.green_1,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  borderRadius: Get.width,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 8,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CostumFlatButton(
                                      padding: EdgeInsets.all(8),
                                      color: allColor.primary.withOpacity(0.3),
                                      child: Center(
                                        child: Text(
                                          "24 NOV 2019",
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: allColor.primary,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      borderRadius: Get.width,
                                    ),
                                    Text(
                                      "Approved by Manager",
                                      style: TextStyle(
                                          color: allColor.secondary,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                BaseCard(
                  label: "SUARA PELANGGAN",
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Card(
                          elevation: 5,
                          child: RoundedTextField(
                            hintText: "Kategori",
                            borderSide: BorderSide.none,
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 16 * 5,
                            child: RoundedTextField(
                              padding: EdgeInsets.all(10),
                              maxLines: 1000,
                              hintText: "Rincian Keluhan",
                              keyboardType: TextInputType.multiline,
                              borderSide: BorderSide.none,
                              // style: TextStyle(fontSize: Get.width * 0.035),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CostumFlatButton(
                            padding: EdgeInsets.all(10),
                            color: allColor.secondary,
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
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

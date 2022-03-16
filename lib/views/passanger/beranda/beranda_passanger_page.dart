import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/beranda/beranda_driver_page_controller.dart';
import 'package:par_mobile/views/driver/beranda/components/stattile.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/callcenterfloatingbutton.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/costumTable.dart';
import 'package:par_mobile/widgets/costumstatbar.dart';

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
                  child: ListTile(
                    leading: Expanded(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}

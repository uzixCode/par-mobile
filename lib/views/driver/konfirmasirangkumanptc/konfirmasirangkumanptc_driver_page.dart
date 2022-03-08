import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/konfirmasiptctile.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class KonfirmasiRangkumanPTC extends StatelessWidget {
  const KonfirmasiRangkumanPTC({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
          width: Get.width * 0.90,
          height: Get.height * 0.80,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Get.width * 0.025)),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Konfirmasi Rangkuman PTC",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.04),
                  ).paddingOnly(bottom: 15),
                  Expanded(
                      child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      KonfirmasiPTCTile(label: "Elektrikal"),
                      KonfirmasiPTCTile(label: "Spion"),
                      KonfirmasiPTCTile(label: "Wiper"),
                      KonfirmasiPTCTile(label: "Accu"),
                      KonfirmasiPTCTile(label: "Lainnya"),
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CostumFlatButton(
                            onTap: () => Get.back(),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            color: allColor.red,
                            child: Text(
                              "Kembali",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.width * 0.04,
                                  fontWeight: FontWeight.bold),
                            )),
                        CostumFlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            color: allColor.green,
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.width * 0.04,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}

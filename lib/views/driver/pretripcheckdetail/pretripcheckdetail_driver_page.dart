import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/checkdetailrow.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/pretripchecksection.dart';

class PreTripCheckDetailDriverPage extends StatelessWidget {
  const PreTripCheckDetailDriverPage({Key? key}) : super(key: key);

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
                  Center(
                    child: Text(
                      "ELEKTRIKAL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.04),
                    ).paddingOnly(bottom: 20),
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      PreTripCheckSection(
                          sectionLabel: "Air Conditioner",
                          dataRowList: [
                            CheckDetailRow(label: "Air Conditioner"),
                            CheckDetailRow(
                              label: "Temperature",
                              labelOption1: "Sejuk/Dingin",
                              labelOption2: "Tidak Dingin",
                            ),
                            CheckDetailRow(label: "Blower"),
                          ]),
                      PreTripCheckSection(
                          sectionLabel: "Power Windows",
                          dataRowList: [
                            CheckDetailRow(label: "Depan Kiri"),
                            CheckDetailRow(label: "Depan Kanan"),
                            CheckDetailRow(label: "Belakang Kiri"),
                            CheckDetailRow(label: "Belakang Kanan"),
                          ]),
                      PreTripCheckSection(
                          sectionLabel: "Air Conditioner",
                          dataRowList: [
                            CheckDetailRow(label: "Air Conditioner"),
                            CheckDetailRow(
                              label: "Temperature",
                              labelOption1: "Sejuk/Dingin",
                              labelOption2: "Tidak Dingin",
                            ),
                            CheckDetailRow(label: "Blower"),
                          ]),
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CostumFlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        color: allColor.green,
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.width * 0.04,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}

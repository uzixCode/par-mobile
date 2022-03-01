import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/perjalanan/perjalanan_driver_page_controller.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/historycard.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class PerjalananDriverPage extends StatelessWidget {
  PerjalananDriverPage({Key? key}) : super(key: key);
  PerjalananDriverPageController perjalananDriverPageController =
      Get.put(PerjalananDriverPageController());
  static double vPadding = 15;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerjalananDriverPageController>(
      init: Get.find<PerjalananDriverPageController>(),
      builder: (con) => Scaffold(
          //backgroundColor: allColor.faded_blue,
          body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          AspectRatio(
            aspectRatio: 2 / 0.25,
            child: Row(
              children: [
                Expanded(
                    child: CostumFlatButton(
                        //padding: EdgeInsets.symmetric(vertical: vPadding),
                        onTap: () => con.pickAwalDate(context),
                        border: Border.all(color: allColor.light_grey),
                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              con.awalDate == null
                                  ? "Tanggal Mulai"
                                  : con.format.format(con.awalDate!),
                              maxLines: 1,
                              style: TextStyle(
                                color: con.awalDate == null
                                    ? allColor.light_grey
                                    : Colors.black,
                                fontSize: Get.width * 0.04,
                              ),
                            ),
                          ),
                        ))),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                    child: CostumFlatButton(
                        //padding: EdgeInsets.symmetric(vertical: vPadding),
                        onTap: () => con.pickAkhirDate(context),
                        border: Border.all(color: allColor.light_grey),
                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              con.akhirDate == null
                                  ? "Tanggal Akhir"
                                  : con.format.format(con.akhirDate!),
                              maxLines: 1,
                              style: TextStyle(
                                color: con.akhirDate == null
                                    ? allColor.light_grey
                                    : Colors.black,
                                fontSize: Get.width * 0.04,
                              ),
                            ),
                          ),
                        ))),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                    child: CostumFlatButton(
                        //padding: EdgeInsets.symmetric(vertical: 10),
                        color: allColor.secondary,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: Get.width * 0.08,
                              ),
                              Text(
                                "CARI",
                                style: TextStyle(
                                  fontSize: Get.width * 0.04,
                                  color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "RIWAYAT",
                    style: TextStyle(
                        color: allColor.primary,
                        fontSize: Get.width * 0.038,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  "assets/images/order.png",
                  width: Get.width * 0.03,
                )
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HistoryCard(),
                  HistoryCard(),
                  HistoryCard(),
                  HistoryCard()
                ],
              ),
            ),
          ))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/absensi/absensi_driver_page_controller.dart';
import 'package:par_mobile/models/widgets/monthmodel.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/costumTable.dart';
import 'package:par_mobile/widgets/costumtablerow.dart';
import 'package:par_mobile/widgets/monthpicker.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';
import 'package:par_mobile/widgets/tabletile.dart';
import 'package:par_mobile/widgets/yearpicker.dart';

class AbsensiDriverPage extends StatelessWidget {
  AbsensiDriverPage({Key? key}) : super(key: key);
  AbsensiDriverPageController absensiDriverPageController =
      Get.put(AbsensiDriverPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AbsensiDriverPageController>(
      init: Get.find<AbsensiDriverPageController>(),
      builder: (con) => Scaffold(
          body: Column(
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
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: TableTile(
                      content: "Tanggal",
                      background: allColor.another_blue,
                      fontColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TableTile(
                      content: "Hari",
                      background: allColor.another_blue,
                      fontColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TableTile(
                      content: "Jamker",
                      background: allColor.another_blue,
                      fontColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TableTile(
                      content: "Masuk",
                      background: allColor.another_blue,
                      fontColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TableTile(
                      content: "Pulang",
                      background: allColor.another_blue,
                      fontColor: Colors.white,
                    ),
                  ),
                ]),
                Expanded(
                    child: ListView.builder(
                  itemCount: 20,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => CostumTableRow(
                    index: index,
                    absen: index == 5 || index == 19 ? true : null,
                    izin: index == 9 ? true : null,
                    libur: index == 13 || index == 3 ? true : null,
                  ),
                )),
              ],
            ),
          )
        ],
      )),
    );
  }
}

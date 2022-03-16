import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver_pool/clockinout/clockinout_driverpool_page_controller.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';

import '../../driver/profile/components/datatilecard.dart';

class ClockInOutDriverPoolPage extends StatelessWidget {
  ClockInOutDriverPoolPage({Key? key}) : super(key: key);
  ClockInOutDriverPoolPageController clockInOutDriverPoolPageController =
      Get.put(ClockInOutDriverPoolPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClockInOutDriverPoolPageController>(
      init: Get.find<ClockInOutDriverPoolPageController>(),
      builder: (con) => Scaffold(
        body: Center(
          child: SizedBox(
              width: Get.width * 0.90,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.04)),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Info Kendaraan Anda",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: allColor.primary),
                                ).paddingOnly(bottom: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "B 8 Han",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ).paddingOnly(bottom: 8),
                                        Text(
                                          "Nomor Pelat",
                                          style: TextStyle(
                                              color: allColor.light_grey),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Fortuner",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ).paddingOnly(bottom: 8),
                                        Text(
                                          "Model",
                                          style: TextStyle(
                                              color: allColor.light_grey),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "2020",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ).paddingOnly(bottom: 8),
                                        Text(
                                          "Tahun",
                                          style: TextStyle(
                                              color: allColor.light_grey),
                                        )
                                      ],
                                    )
                                  ],
                                ).paddingOnly(bottom: 10),
                                if (!con.isConfirmed)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CostumFlatButton(
                                        color: allColor.red,
                                        child: Text(
                                          "Ganti Mobil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () =>
                                            Get.dialog(UnconstrainedBox(
                                                child: SizedBox(
                                          width: Get.width * 0.90,
                                          child: Material(
                                            child: Container(
                                              child: Center(
                                                child: SizedBox(
                                                  width: Get.width * 0.80,
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: IconButton(
                                                            onPressed: () =>
                                                                Get.back(),
                                                            icon: Icon(
                                                                Icons.close)),
                                                      ),
                                                      Align(
                                                        child: Text(
                                                          "GANTI MOBIL",
                                                          style: TextStyle(
                                                              color: allColor
                                                                  .secondary,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  Get.width *
                                                                      0.05),
                                                        ),
                                                      ),
                                                      DataTileCard(
                                                        label: "Nomor Plat",
                                                        elevetion: 0,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 20.0),
                                                        child: CostumFlatButton(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 5,
                                                                    horizontal:
                                                                        25),
                                                            color:
                                                                allColor.green,
                                                            child: Text(
                                                              "Submit",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      Get.width *
                                                                          0.035,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CostumFlatButton(
                                          onTap: () => con.changeIsConfirmed(),
                                          color: allColor.green,
                                          child: Text(
                                            "Konfirmasi",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: LayoutBuilder(
                          builder: (context, card) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Stack(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Get.width * 0.04)),
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              Get.width * 0.04),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/maps.png"))),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: card.maxHeight * 0.50,
                                  left: 0,
                                  right: 0,
                                  child: UnconstrainedBox(
                                    child: Container(
                                      width: card.maxWidth * 0.80,
                                      margin: EdgeInsets.only(top: 16),
                                      decoration: BoxDecoration(
                                          color: allColor.red,
                                          borderRadius: BorderRadius.circular(
                                              Get.width * 0.02)),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Anda Belum Melakukan PTC dan DCU. Jangan lupa untuk selalu melaporkan keadaan Anda dan kendaraan!",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: card.maxHeight * 0.70,
                                  left: 0,
                                  right: 0,
                                  child: UnconstrainedBox(
                                    child: Container(
                                      width: card.maxWidth * 0.80,
                                      margin: EdgeInsets.only(top: 16),
                                      decoration: BoxDecoration(
                                          color: allColor.secondary,
                                          borderRadius: BorderRadius.circular(
                                              Get.width * 0.02)),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Anda berada di wilayah yang sama dengan kendaraan",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: CostumFlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              color: allColor.secondary,
                              child: Text(
                                "Lanjut",
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

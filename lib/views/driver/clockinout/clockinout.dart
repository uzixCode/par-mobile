import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';

class ClockInOut extends StatelessWidget {
  const ClockInOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              ).paddingOnly(bottom: 8),
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
    );
  }
}

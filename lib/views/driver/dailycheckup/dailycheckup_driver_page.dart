import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/driver/dailycheckup/components/checkuptiles.dart';
import 'package:par_mobile/views/driver/dailycheckup/components/questioncheckuptiles.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class DailyCheckUP extends StatelessWidget {
  const DailyCheckUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: Get.width * 0.90,
          height: Get.height * 0.80,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Get.width * 0.03)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Daily Check Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.045),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    children: [
                      CheckupTiles(
                        label: "Masukan Suhu Tubuh Anda : ",
                        child: Row(
                          children: [
                            Expanded(
                              child: RoundedTextField(
                                keyboardType: TextInputType.number,
                                borderRadius: Get.width * 0.02,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "\u2103",
                                style: TextStyle(
                                    fontSize: 20, color: allColor.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                      CheckupTiles(
                        label: "Masukan Tekanan Darah Anda : ",
                        child: Row(
                          children: [
                            Expanded(
                              child: RoundedTextField(
                                keyboardType: TextInputType.number,
                                borderRadius: Get.width * 0.02,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                              ),
                            ),
                            Text(
                              "/",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ).paddingSymmetric(horizontal: 10),
                            Expanded(
                              child: RoundedTextField(
                                keyboardType: TextInputType.number,
                                borderRadius: Get.width * 0.02,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "mmhg",
                                style: TextStyle(
                                    fontSize: 20, color: allColor.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                      CheckupTiles(
                        label: "Masukan Foto DCU : ",
                        child: RoundedTextField(
                          borderRadius: Get.width * 0.02,
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CostumFlatButton(
                                color: allColor.light_grey,
                                borderRadius: 0,
                                padding: EdgeInsets.all(8),
                                child: Text("Browse")),
                          ),
                        ),
                      ),
                      QuestionCheckUpTiles(
                          onValueChange: (value) {
                            print(value);
                          },
                          label: "Apakah Anda Sudah Cukup Tidur ?"),
                      QuestionCheckUpTiles(
                          onValueChange: (value) {
                            print(value);
                          },
                          label: "Apakah Anda Tidak Mengkonsumsi Minuman ?"),
                      QuestionCheckUpTiles(
                          onValueChange: (value) {
                            print(value);
                          },
                          label: "Apakah Anda Tidak Mengkonsumsi Obat Tidur ?")
                    ],
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: CostumFlatButton(
                      color: allColor.green,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white, fontSize: Get.width * 0.04),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

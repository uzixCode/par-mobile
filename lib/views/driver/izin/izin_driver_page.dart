import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/izinhistorycard.dart';
import 'package:par_mobile/widgets/izinkuotacard.dart';

class IzinDriverPage extends StatelessWidget {
  const IzinDriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
          width: Get.width * 0.90,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: IzinKuotaCard(
                      color: allColor.green,
                      kuota: "13",
                      label: "Kuota Cuti",
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: IzinKuotaCard(
                      color: allColor.primary,
                      kuota: "13",
                      label: "Kuota Cuti",
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: IzinKuotaCard(
                      color: allColor.grey,
                      kuota: "13",
                      label: "Kuota Cuti",
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: IzinKuotaCard(
                      color: allColor.red,
                      kuota: "13",
                      label: "Kuota Cuti",
                    )),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    IzinHistoryCard(),
                    IzinHistoryCard(),
                    IzinHistoryCard(status: 2),
                    IzinHistoryCard(status: 2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: Get.width * 0.80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.02)),
                    color: allColor.primary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: Center(
                        child: Text(
                          "Pengajuan Izin",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.04),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}

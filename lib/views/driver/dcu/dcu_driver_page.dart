import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/dcucard.dart';
import 'package:par_mobile/widgets/dcuhistorycard.dart';

class DcuDriverPage extends StatelessWidget {
  const DcuDriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allColor.faded_blue,
      body: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("Keterangan : \n"),
              )),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    DcuCard(color: allColor.dcu_sehat),
                    Text("     : Sehat/Normal")
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.05,
              ),
              Expanded(
                child: Row(
                  children: [
                    DcuCard(color: allColor.dcu_sedang),
                    Text("     : Sedang")
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    DcuCard(color: allColor.dcu_waspada),
                    Text("     : Waspada")
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.05,
              ),
              Expanded(
                child: Row(
                  children: [
                    DcuCard(color: allColor.dcu_sakit),
                    Text("     : Sakit")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                DcuHistoryCard(
                  isHeader: true,
                ),
                DcuHistoryCard(
                  isHeader: false,
                ),
                DcuHistoryCard(
                  isHeader: false,
                ),
                DcuHistoryCard(
                  isHeader: false,
                ),
                DcuHistoryCard(
                  isHeader: false,
                ),
                DcuHistoryCard(
                  isHeader: false,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

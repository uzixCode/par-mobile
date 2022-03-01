import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/constants/all_color.dart';

class HistoryCard extends StatelessWidget {
  HistoryCard({Key? key}) : super(key: key);
  final format = DateFormat("dd MMMM yyyy");
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Get.width * 0.03)),
      child: LayoutBuilder(
        builder: (context, card) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  format.format(DateTime.now()),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Get.width * 0.04),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Durasi Perjalanan",
                          style: TextStyle(fontSize: Get.width * 0.04),
                        ),
                        Text(
                          "9 Jam 34 Menit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: allColor.primary,
                              fontSize: Get.width * 0.04),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 2,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Jarak Perjalanan",
                          style: TextStyle(fontSize: Get.width * 0.04),
                        ),
                        Text(
                          "5 km",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: allColor.primary,
                              fontSize: Get.width * 0.04),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

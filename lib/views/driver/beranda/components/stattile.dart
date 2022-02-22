import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumstatbar.dart';

class StatTile extends StatelessWidget {
  StatTile(
      {Key? key,
      required this.label,
      required this.data,
      required this.persentage})
      : super(key: key);
  String label;
  String data;
  double persentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    label,
                    style: TextStyle(
                        color: allColor.light_blue,
                        fontSize: Get.width * 0.028),
                  ),
                ),
                decoration: BoxDecoration(
                    color: allColor.faded_blue,
                    borderRadius: BorderRadius.circular(Get.width)),
              ),
              Text(
                data,
                style: TextStyle(
                    color: allColor.light_grey, fontWeight: FontWeight.bold),
              )
            ],
          ).paddingOnly(bottom: 8),
          CostumStatBar(
            height: 10,
            width: double.maxFinite,
            persentage: persentage,
            barColor: allColor.light_grey.withOpacity(0.5),
            progressColor: allColor.green,
          )
        ],
      ),
    );
  }
}

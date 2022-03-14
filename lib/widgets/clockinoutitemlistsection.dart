import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/all_color.dart';

class ClockInOutItemListSection extends StatelessWidget {
  final Function() onTap;
  final String driverName;
  final String status;
  final String clockIn;
  final String clockOut;
  const ClockInOutItemListSection({Key? key, required this.onTap, required this.driverName, required this.status, required this.clockIn, required this.clockOut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      driverName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.035),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                          color: allColor.light_red,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.03),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Clock In",
                          style: TextStyle(
                              color: allColor.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.03),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          clockIn,
                          style: TextStyle(fontSize: Get.width * 0.03),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Clock Out",
                          style: TextStyle(
                              color: allColor.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.03),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          clockOut,
                          style: TextStyle(fontSize: Get.width * 0.03),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

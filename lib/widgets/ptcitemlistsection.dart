import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/all_color.dart';

class PTCItemListSection extends StatelessWidget {
  final Function() onTap;
  final bool isShowStatus;
  final String driverName;
  final String platNomor;
  final String description;
  final String craeteDate;
  final String? status;
  final int? duration;
  const PTCItemListSection(
      {Key? key,
      required this.onTap,
      required this.isShowStatus,
      required this.driverName,
      required this.platNomor,
      required this.description,
      required this.craeteDate,
      this.status,
      this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 15),
            child: Row(
              children: [
                Container(
                  width: Get.width * 0.17,
                  height: Get.width * 0.17,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/background.png")),
                      color: allColor.green,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Expanded(
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
                            platNomor,
                            style: TextStyle(
                                color: allColor.primary,
                                fontSize: Get.width * 0.035,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: Get.width * 0.030),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            craeteDate,
                            style: TextStyle(
                                color: allColor.primary,
                                fontSize: Get.width * 0.030),
                          ),
                          SizedBox(
                            width: Get.width * 0.01,
                          ),
                          Expanded(
                            child: isShowStatus
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: allColor.light_red,
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.warning,
                                              color: Colors.white,
                                              size: Get.width * 0.03,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(status!,
                                                style: TextStyle(
                                                    fontSize: Get.width * 0.030,
                                                    color: Colors.white))
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: allColor.light_red,
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color: Colors.white,
                                              size: Get.width * 0.03,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text("$duration HARI",
                                                style: TextStyle(
                                                    fontSize: Get.width * 0.030,
                                                    color: Colors.white))
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 5,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

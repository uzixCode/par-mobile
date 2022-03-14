import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/all_color.dart';

class PTCItemListSection extends StatelessWidget {
  final Function() onTap;
  final bool isShowStatus;
  const PTCItemListSection({Key? key, required this.onTap, required this.isShowStatus}) : super(key: key);

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
                          const Text(
                            "Bambang Wijaya",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "B 1234 BD",
                            style: TextStyle(
                                color: allColor.primary,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Keausan/Kondisi - Retak/Robek"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "10 Oct 2021",
                        style: TextStyle(color: allColor.primary),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      isShowStatus ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: allColor.light_red,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.warning,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("HIGH",
                                    style: TextStyle(color: Colors.white))
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
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("108 HARI",
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                        ],
                      ) : Container(),
                    ],
                  ),
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

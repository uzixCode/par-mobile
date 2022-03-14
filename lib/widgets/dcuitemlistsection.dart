import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/all_color.dart';

class DCUItemListSection extends StatelessWidget {
  final Function() onTap;
  const DCUItemListSection({Key? key, required this.onTap}) : super(key: key);

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
                  width: Get.width * 0.03,
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
                      Text(
                        "Kondisi driver tidak memungkinkan untuk melakukan perjalanan",
                        maxLines: 4,
                        style: TextStyle(fontSize: Get.width * 0.03),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: allColor.light_red,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("High Temperature",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * 0.025)),
                                Text("39 C",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * 0.04))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.01,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: allColor.light_red,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("High Blood Pressure",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * 0.025)),
                                Text("120/90",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * 0.04))
                              ],
                            ),
                          ),
                        ],
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
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

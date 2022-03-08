import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/basecard.dart';

class DriverProfileSection extends StatelessWidget {
  const DriverProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BaseCard(
          label: "Info Driver",
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bambang Wijaya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.045,
                        )).paddingOnly(bottom: 5),
                    Text("bambang@gmail.com",
                        style: TextStyle(
                          fontSize: Get.width * 0.04,
                        )).paddingOnly(bottom: 5),
                    Text("+62 851 568 95918",
                        style: TextStyle(
                          fontSize: Get.width * 0.04,
                        )).paddingOnly(bottom: 5),
                  ],
                ),
                Image.asset("assets/images/phone.png",
                        fit: BoxFit.cover, width: Get.width * 0.12)
                    .paddingOnly(right: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/beranda/beranda_suo_page_controller.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BerandaSUOPageController controller = Get.put(BerandaSUOPageController());

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Get.width * 0.05),
          bottomRight: Radius.circular(Get.width * 0.05),
        ),
        color: allColor.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.17,
                  height: Get.width * 0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/background.png")),
                      color: allColor.green,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Pagi,",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "DIAN SANJAYA",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: Get.width * 0.04),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "SUO/KORLAP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              controller.dateFormat.format(controller.dateTimeNow),
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/controllers/passanger/main/main_passanger_page_controller.dart';
import 'package:par_mobile/views/suo/monitoring/monitoring_suo_page.dart';

import '../../../constants/all_color.dart';
import '../../suo/approval/approval_suo_page.dart';

class ApprovalPassangerPage extends StatelessWidget {
  ApprovalPassangerPage({Key? key}) : super(key: key);
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Card(
          elevation: 10,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Get.width * 0.05),
              bottomRight: Radius.circular(Get.width * 0.05),
            ),
          ),
          color: allColor.primary,
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
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                "assets/images/background.png",
                                cacheHeight: 183,
                                cacheWidth: 183,
                              ).image),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            "Uzix Code",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.04),
                          ),
                        ),
                        Text(
                          "SUO/Korlap",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  dateFormat.format(dateTimeNow),
                  textAlign: TextAlign.right,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Expanded(child: ApprovalSUOPage())
      ],
    ));
  }
}

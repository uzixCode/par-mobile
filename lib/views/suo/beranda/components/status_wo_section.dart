import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/custom_icon_text.dart';

class StatusWOSection extends StatelessWidget {
  const StatusWOSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "STATUS WORKING ORDER",
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: allColor.secondary,
                  radius: 25,
                  child: const Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: allColor.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "D 1234 BD",
                    style: TextStyle(fontSize: Get.width * 0.03, color: allColor.green),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Expanded(
                            child: Text(
                          "Darminto",
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: Get.width * 0.035, fontWeight: FontWeight.bold),
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomIconWithText(
                                colorBackground: allColor.red.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15),
                                iconLabel: Icon(
                                  Icons.warning,
                                  size: 14,
                                  color: allColor.red,
                                ),
                                widgetContent: Text(
                                  "HIGH",
                                  style: TextStyle(
                                      color: allColor.red,
                                      fontSize: Get.width * 0.03,
                                      fontWeight: FontWeight.bold),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3)),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            CustomIconWithText(
                                colorBackground: allColor.red.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15),
                                iconLabel: Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: allColor.red,
                                ),
                                widgetContent: Text(
                                  "1 HARI",
                                  style: TextStyle(
                                      color: allColor.red,
                                      fontSize: Get.width * 0.03,
                                      fontWeight: FontWeight.bold),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3))
                          ],
                        ),
                      ]),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "Tutup Oli & Dip Stick - Tidak berfungsi / Seal Bocor",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: Get.width * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconWithText(
                          colorBackground: allColor.primary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                          iconLabel: Icon(
                            Icons.calendar_today,
                            size: 12,
                            color: allColor.primary,
                          ),
                          widgetContent: Text(
                            "24 NOV 19",
                            style: TextStyle(
                                color: allColor.primary,
                                fontSize: Get.width * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3)),
                      Expanded(
                          child: Text(
                        "Approved By Manager",
                        textAlign: TextAlign.end,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: Get.width * 0.03,
                            color: allColor.primary,
                            fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

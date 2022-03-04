import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class IzinHistoryCard extends StatelessWidget {
  IzinHistoryCard({Key? key, this.status = 1}) : super(key: key);
  int status;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: Icon(
          status == 1 ? Icons.alarm_outlined : Icons.check,
          size: Get.width * 0.10,
          color: status == 1 ? null : allColor.green,
        ),
        title: Row(
          children: [
            Text(
              "CUTI",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text("12 - 04 - 2021 s/d 14-04-2021"))),
          ],
        ),
        subtitle: Row(
          children: [
            Text("Status : "),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  "Menunggu Persetujuan SUO",
                  style: TextStyle(
                      color: status == 1 ? allColor.light_red : allColor.green),
                ),
              ),
            )
          ],
        ),
        trailing: Icon(
          Icons.chevron_right,
          size: Get.width * 0.10,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/driver_score_detail/components/body.dart';

class DriverScoreDetailPage extends StatelessWidget {
  const DriverScoreDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Rincian Penilaian",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Get.width * 0.04,
              color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: allColor.primary,
            )),
      ),
      body: Body(),
    );
  }
}

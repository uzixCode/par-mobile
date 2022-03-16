import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/suo/approval/approval_dcu_detail_controller.dart';
import 'package:par_mobile/views/suo/approval_dcu_detail/components/table_dcu_section.dart';

import '../../../../constants/all_color.dart';
import '../../../../widgets/rectangle_button.dart';

class FindDriverReplacement extends StatelessWidget {
  const FindDriverReplacement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApprovalDCUDetailController controller =
        Get.put(ApprovalDCUDetailController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cari Pengganti Driver",
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pilih Pool Driver Yang Tersedia Untuk Menggantikan Driver Dengan Rincian Sebagai Berikut",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: allColor.primary, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TableDCUSection(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Driver Pengganti",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: allColor.primary,
                      fontSize: Get.width * 0.035,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: controller.txtDriver.value,
                  decoration: const InputDecoration(isDense: true),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: Get.width * 0.35,
                    child: RectangleButton(
                      onTap: () {},
                      color: allColor.green,
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: Get.width * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

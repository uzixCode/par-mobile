import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_dcu_detail/components/find_driver_replacement.dart';
import 'package:par_mobile/views/suo/approval_dcu_detail/components/table_dcu_section.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';
import 'package:par_mobile/widgets/tablerow_content.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              Text(
                "Berikan Keputusan Untuk Hasil Daily Check Up Dengan Rincian Sebagai Berikut",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: RectangleButton(
                      onTap: () {},
                      color: allColor.primary,
                      alignment: Alignment.center,
                      child: Text(
                        "Approve Sementara",
                        style: TextStyle(
                            fontSize: Get.width * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.35,
                    child: RectangleButton(
                      onTap: () {
                        Get.to(const FindDriverReplacement());
                      },
                      color: allColor.green,
                      alignment: Alignment.center,
                      child: Text(
                        "Cari Pengganti",
                        style: TextStyle(
                            fontSize: Get.width * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

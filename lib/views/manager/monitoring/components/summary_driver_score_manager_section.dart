import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/driverscoreitemsection.dart';
import '../../../suo/driver_score_detail/driver_score_detail_page.dart';

class SummaryDriverScoreManagerSection extends StatelessWidget {
  const SummaryDriverScoreManagerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "RANGKUMAN PENILAIAN DRIVER",
      trailing: Container(),
      leading: Container(),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  isDense: true,
                  hintText: "Periode Bulan Desember",
                  hintStyle: TextStyle(fontSize: Get.width * 0.035),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return DriverScoreItemSection(
                          onTap: () {
                            Get.to(const DriverScoreDetailPage());
                          },
                          driverName: "Bambang Wijaya",
                          modelCar: "AVANZA",
                          platNomor: "B 1234 XY",
                          rating: 3);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

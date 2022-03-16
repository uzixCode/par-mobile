import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/driver_score_detail/driver_score_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/driverscoreitemsection.dart';

class SummaryDriverScoreSection extends StatelessWidget {
  const SummaryDriverScoreSection({Key? key}) : super(key: key);

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

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/vehicle_score_detail/vehicle_score_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/vehicle_score_item_section.dart';

class SummaryVehicleScoreSection extends StatelessWidget {
  const SummaryVehicleScoreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "RANGKUMAN PENILAIAN KENDARAAN",
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
                      return VehicleScoreItemSection(
                          onTap: () {
                            Get.to(const VehicleScoreDetailPage());
                          },
                          modelCar: "AVANZA",
                          platNomor: "B 1234 XY",
                          driverName: "Bambang Wijaya",
                          rating: 3.0);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

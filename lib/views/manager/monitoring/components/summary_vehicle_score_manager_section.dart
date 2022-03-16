import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/vehiclescoreitemsection.dart';
import '../../../suo/vehicle_score_detail/vehicle_score_detail_page.dart';

class SummaryVehicleScoreManagerSection extends StatelessWidget {
  const SummaryVehicleScoreManagerSection({Key? key}) : super(key: key);

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

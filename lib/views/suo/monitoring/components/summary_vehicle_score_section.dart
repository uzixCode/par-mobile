import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/vehicle_score_detail/vehicle_score_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';

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
                      return InkWell(
                        onTap: () {
                          Get.to(VehicleScoreDetailPage());
                        },
                        child: Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 15, top: 15),
                              child: Row(
                                children: [
                                  Container(
                                    width: Get.width * 0.20,
                                    height: Get.width * 0.20,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/images/background.png")),
                                        color: allColor.green,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.03,
                                  ),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "AVANZA - B 1234 XY",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: Get.width * 0.035),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Bambang Wijaya",
                                              style: TextStyle(
                                                  fontSize: Get.width * 0.03),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: false,
                                              itemCount: 5,
                                              ignoreGestures: true,
                                              itemSize: 25,
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "3.0",
                                          style: TextStyle(
                                              fontSize: Get.width * 0.07,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

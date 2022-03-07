import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/driver_score_detail/driver_score_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';

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
                decoration: const InputDecoration(
                  isDense: true,
                  hintText: "Periode Bulan Desember",
                  hintStyle: const TextStyle(fontSize: 12),
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
                          Get.to(DriverScoreDetailPage());
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 15, top: 15),
                              child: Row(
                                children: [
                                  Container(
                                    width: Get.width * 0.20,
                                    height: Get.width * 0.20,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            fit: BoxFit.cover, image: AssetImage("assets/images/background.png")),
                                        color: allColor.green,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.03,
                                  ),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Bambang Wijaya",
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              "AVANZA - B 1234 XY",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 25,
                                              itemBuilder: (context, _) => const Icon(
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
                                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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

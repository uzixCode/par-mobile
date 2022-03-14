import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/all_color.dart';
import '../../../../widgets/basecard.dart';

class PTCRiwayatSection extends StatelessWidget {
  const PTCRiwayatSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      trailing: Container(),
      leading: Container(),
      label: "Pre Trip Check (PTC)",
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(bottom: 15, top: 15),
                        child: Row(
                          children: [
                            Container(
                              width: Get.width * 0.17,
                              height: Get.width * 0.17,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/background.png")),
                                  color: allColor.green,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: Get.width * 0.05,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Bambang Wijaya",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "B 1234 BD",
                                        style: TextStyle(
                                            color: allColor.primary,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                      "Keausan/Kondisi - Retak/Robek"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "10 Oct 2021",
                                    style: TextStyle(
                                        color: allColor.primary),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}

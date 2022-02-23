import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_dcu_detail/approval_dcu_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';

class DCUSection extends StatelessWidget {
  const DCUSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "DAILY CHECK UP (DCU)",
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(ApprovalDCUDetailPage());
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15, top: 15),
                        child: Row(
                          children: [
                            Container(
                              width: Get.width * 0.17,
                              height: Get.width * 0.17,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Bambang Wijaya",
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "B 1234 BD",
                                        style: TextStyle(color: allColor.primary, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Kondisi driver tidak memungkinkan untuk melakukan perjalanan",
                                    maxLines: 4,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: allColor.light_red,
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: const [
                                            Text("High Temperature",
                                                style: TextStyle(color: Colors.white, fontSize: 11)),
                                            Text("39 C", style: TextStyle(color: Colors.white, fontSize: 16))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.01,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: allColor.light_red,
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: const [
                                            Text("High Blood Pressure",
                                                maxLines: 2, style: TextStyle(color: Colors.white, fontSize: 11)),
                                            Text("120/90", style: TextStyle(color: Colors.white, fontSize: 16))
                                          ],
                                        ),
                                      ),
                                    ],
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

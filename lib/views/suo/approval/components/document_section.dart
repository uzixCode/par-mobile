import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_update_document/approval_update_document_page.dart';
import 'package:par_mobile/widgets/basecard.dart';

class DocumentSection extends StatelessWidget {
  const DocumentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      trailing: Container(),
      leading: Container(),
      label: "NOTIFIKASI DOKUMEN",
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(ApprovalUpdateDocumentPage());
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bambang Wijaya",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.035),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Dokumen KEUR Driver',
                                style: TextStyle(
                                    color: allColor.light_red,
                                    fontSize: Get.width * 0.030),
                                children: [
                                  TextSpan(
                                      text:
                                          ' akan segera habis. Mohon untuk segera diperpanjang.',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: Get.width * 0.030)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.warning,
                                        color: Colors.white,
                                        size: Get.width * 0.030,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text("EXP: 22 Oct 2021",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Get.width * 0.030))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: allColor.light_red,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.white,
                                        size: Get.width * 0.030,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text("12 HARI LAGI",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Get.width * 0.030))
                                    ],
                                  ),
                                ),
                              ],
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
      ),
    );
  }
}

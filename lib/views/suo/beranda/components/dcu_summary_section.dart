import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_dcu_detail/approval_dcu_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

import '../../../../controllers/suo/approval/approval_suo_page_controller.dart';
import '../../../../controllers/suo/main/main_suo_page_controller.dart';

class DCUSummarySection extends StatelessWidget {
  const DCUSummarySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainSUOPageController mainController = Get.put(MainSUOPageController());
    ApprovalSUOPageController approvalController =
        Get.put(ApprovalSUOPageController());
    return BaseCard(
      label: "RANGKUMAN DCU BERMASALAH",
      trailing: InkWell(
        onTap: () {
          mainController.changePage(2, isAnimateTo: true);
          approvalController.changeTab(1, isAnimateTo: false);
        },
        child: const Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text("Ahmad Hasani",
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.035))),
                    SizedBox(
                      width: Get.width * 0.27,
                      child: RectangleButton(
                        onTap: () {
                          Get.to(ApprovalDCUDetailPage());
                        },
                        color: allColor.primary,
                        alignment: Alignment.center,
                        child: Text(
                          "Lihat",
                          style: TextStyle(
                              fontSize: Get.width * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

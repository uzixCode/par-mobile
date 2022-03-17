import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/manager/main/main_manager_page_controller.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/ptcsummaryitemsection.dart';
import '../../../suo/approval_ptc_detail/approval_ptc_detail_page.dart';

class PTCSummaryManagerSection extends StatelessWidget {
  const PTCSummaryManagerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainManagerPageController mainController =
        Get.put(MainManagerPageController());

    return BaseCard(
      label: "RANGKUMAN PTC BERMASALAH",
      trailing: InkWell(
        onTap: () {
          mainController.changePage(2, isAnimateTo: true);
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
              return PTCSummaryItemSection(
                  merkCar: "AVANZA",
                  platNomor: "B 234 KIL",
                  onTap: () {
                    Get.to(ApprovalPTCDetailPage());
                  });
            }),
      ),
    );
  }
}

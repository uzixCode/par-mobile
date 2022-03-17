import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/approval/approval_suo_page_controller.dart';
import 'package:par_mobile/controllers/suo/beranda/beranda_suo_page_controller.dart';
import 'package:par_mobile/controllers/suo/main/main_suo_page_controller.dart';
import 'package:par_mobile/views/suo/approval/approval_suo_page.dart';
import 'package:par_mobile/views/suo/approval_ptc_detail/approval_ptc_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/ptcsummaryitemsection.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';
import 'package:par_mobile/widgets/rounded_button.dart';

class PTCSummarySection extends StatelessWidget {
  const PTCSummarySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainSUOPageController mainController = Get.put(MainSUOPageController());
    ApprovalSUOPageController approvalController =
        Get.put(ApprovalSUOPageController());
    return BaseCard(
      label: "RANGKUMAN PTC BERMASALAH",
      trailing: InkWell(
        onTap: () {
          mainController.changePage(2, isAnimateTo: true);
          approvalController.changeTab(0, isAnimateTo: false);
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

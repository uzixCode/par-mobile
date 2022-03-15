import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/ptcsummaryitemsection.dart';
import '../../../suo/approval_ptc_detail/approval_ptc_detail_page.dart';

class PTCSummaryManagerSection extends StatelessWidget {
  const PTCSummaryManagerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "RANGKUMAN PTC BERMASALAH",
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
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

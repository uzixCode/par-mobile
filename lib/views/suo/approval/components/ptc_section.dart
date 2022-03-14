import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_ptc_detail/approval_ptc_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/ptcitemlistsection.dart';

class PTCSection extends StatelessWidget {
  const PTCSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      trailing: Container(),
      leading: Container(),
      label: "Pre Trip Check (PTC)",
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("ALL"),
                  SizedBox(
                    width: 8,
                  ),
                  Text("HIGH"),
                  SizedBox(
                    width: 8,
                  ),
                  Text("MEDIUM"),
                  SizedBox(
                    width: 8,
                  ),
                  Text("LOW"),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return PTCItemListSection(
                        onTap: () {
                          Get.to(ApprovalPTCDetailPage());
                        },
                        isShowStatus: true,
                        driverName: 'Bambang Wijaya',
                        platNomor: 'B 1234 BD',
                        description: 'Keausan/Kondisi - Retak/Robek',
                        craeteDate: '10 Oct 2021',
                        status: "HIGH",
                        duration: 108,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

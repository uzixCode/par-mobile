import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/ptcitemlistsection.dart';
import '../../../suo/approval_ptc_detail/approval_ptc_detail_page.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BaseCard(
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
    ));
  }
}

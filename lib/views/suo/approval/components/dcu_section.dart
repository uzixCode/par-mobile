import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_dcu_detail/approval_dcu_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/dcuitemlistsection.dart';

class DCUSection extends StatelessWidget {
  const DCUSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      trailing: Container(),
      leading: Container(),
      label: "DAILY CHECK UP (DCU)",
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return DCUItemListSection(
                  onTap: () {
                    ApprovalDCUDetailPage();
                  },
                  driverName: 'Bambang Wijaya',
                  description: 'Kondisi driver tidak memungkinkan untuk melakukan perjalanan',
                  platNomor: 'B 1234 BD',
                  statusTemperature: 'High',
                  valueTemperature: 39,
                  statusBlood: 'High',
                  valueBlood: '120/90',
                );
              }),
        ),
      ),
    );
  }
}

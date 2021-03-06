import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/all_color.dart';
import '../../../../widgets/basecard.dart';
import '../../../../widgets/ptcitemlistsection.dart';

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
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (context, index) {
                return PTCItemListSection(
                  onTap: () {},
                  isShowStatus: false,
                  driverName: 'Bambang Wijaya',
                  platNomor: 'B 1234 BD',
                  description: 'Keausan/Kondisi - Retak/Robek',
                  craeteDate: '10 Oct 2021',
                );
              }),
        ),
      ),
    );
  }
}

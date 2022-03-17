import 'package:flutter/material.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/dcuitemlistsection.dart';

class DCURiwayatSection extends StatelessWidget {
  const DCURiwayatSection({Key? key}) : super(key: key);

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
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return DCUItemListSection(
                  onTap: () {},
                  driverName: 'Bambang Wijaya',
                  description:
                      'Kondisi driver tidak memungkinkan untuk melakukan perjalanan',
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

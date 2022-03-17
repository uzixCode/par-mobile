import 'package:flutter/material.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/clockinoutitemlistsection.dart';

class ClockInOutRiwayatSection extends StatelessWidget {
  const ClockInOutRiwayatSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      trailing: Container(),
      leading: Container(),
      label: "CLOCK IN/CLOCK OUT",
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ClockInOutItemListSection(
                  onTap: () {},
                  driverName: 'Bambang Wijaya',
                  status: 'Out Of Area',
                  clockIn: '21 April 2021 07:32',
                  clockOut: '21 April 2021 17:00',
                );
              }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../widgets/basecard.dart';
import '../../../../widgets/ptcitemlistsection.dart';

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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: ListView.builder(
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
      ),
    );
  }
}

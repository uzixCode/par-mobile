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
              itemCount: 3,
              itemBuilder: (context, index) {
                return DCUItemListSection(onTap: () {});
              }),
        ),
      ),
    );
  }
}

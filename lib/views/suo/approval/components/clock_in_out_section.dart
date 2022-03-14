import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_cico_detail/approval_cico_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/clockinoutitemlistsection.dart';

class ClockInOutSection extends StatelessWidget {
  const ClockInOutSection({Key? key}) : super(key: key);

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
              itemCount: 5,
              itemBuilder: (context, index) {
                return ClockInOutItemListSection(onTap: () {});
              }),
        ),
      ),
    );
  }
}

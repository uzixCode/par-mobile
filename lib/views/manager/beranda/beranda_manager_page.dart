import 'package:flutter/material.dart';

import 'components/ptc_summary_manager_section.dart';

class BerandaManagerPage extends StatelessWidget {
  const BerandaManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PTCSummaryManagerSection(),
          ],
        ),
      ),
    );
  }
}

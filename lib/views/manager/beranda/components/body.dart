import 'package:flutter/material.dart';
import 'package:par_mobile/views/manager/beranda/components/ptc_summary_manager_section.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

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
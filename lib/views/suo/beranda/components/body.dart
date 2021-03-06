import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/suo/beranda/beranda_suo_page_controller.dart';
import 'package:par_mobile/views/suo/beranda/components/dcu_summary_section.dart';
import 'package:par_mobile/views/suo/beranda/components/ptc_summary_section.dart';
import 'package:par_mobile/views/suo/beranda/components/status_wo_section.dart';

import 'notif_doc_section.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BerandaSUOPageController controller = Get.put(BerandaSUOPageController());

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PTCSummarySection(),
            DCUSummarySection(),
            StatusWOSection(),
            NotifDocSection(),
          ],
        ),
      ),
    );
  }
}

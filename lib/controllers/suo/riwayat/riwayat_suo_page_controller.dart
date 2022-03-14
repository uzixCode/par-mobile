import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../views/suo/riwayat/components/clock_in_out_riwayat_section.dart';
import '../../../views/suo/riwayat/components/dcu_riwayat_section.dart';
import '../../../views/suo/riwayat/components/ptc_riwayat_section.dart';

class RiwayatSUOPageController extends GetxController {
  var index = 0.obs;
  List<Widget> tab = [
    const PTCRiwayatSection(),
    const DCURiwayatSection(),
    const ClockInOutRiwayatSection(),
  ];
  PageController tabController = PageController(initialPage: 0, keepPage: true);
  void changeTab(int indexi, {bool? isAnimateTo}) {
    index.value = indexi;
    if (isAnimateTo ?? false) {
      tabController.animateToPage(index.value,
          duration: const Duration(milliseconds: 400), curve: Curves.linear);
    }
    update();
  }
}

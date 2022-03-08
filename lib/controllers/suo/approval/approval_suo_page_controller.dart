import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:par_mobile/views/suo/approval/components/clock_in_out_section.dart';
import 'package:par_mobile/views/suo/approval/components/dcu_section.dart';
import 'package:par_mobile/views/suo/approval/components/document_section.dart';
import 'package:par_mobile/views/suo/approval/components/ptc_section.dart';
import 'package:get/get.dart';

class ApprovalSUOPageController extends GetxController {
  var index = 0.obs;
  List<Widget> tab = [
    const PTCSection(),
    const DCUSection(),
    const ClockInOutSection(),
    const DocumentSection(),
  ];
  PageController tabController = PageController(initialPage: 0, keepPage: true);
  void changeTab(int indexi, {bool? isAnimateTo}) {
    index.value = indexi;
    if (isAnimateTo ?? false) {
      tabController.animateToPage(index.value, duration: const Duration(milliseconds: 400), curve: Curves.linear);
    }
    update();
  }

  @override
  void onInit() {
    index.value = 0;
    tabController.initialPage;
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:par_mobile/views/suo/approval/components/clock_in_out_section.dart';
import 'package:par_mobile/views/suo/approval/components/dcu_section.dart';
import 'package:par_mobile/views/suo/approval/components/document_section.dart';
import 'package:par_mobile/views/suo/approval/components/ptc_section.dart';

class ApprovalSUOPageController extends GetxController {
  int index = 0;
  List<Widget> tab = [
    const PTCSection(),
    const DCUSection(),
    const ClockInOutSection(),
    const DocumentSection(),
  ];
  PageController tabController = PageController(initialPage: 0, keepPage: false);
  void changePage(int indexi, {bool? isAnimateTo}) {
    index = indexi;
    if (isAnimateTo ?? false) {
      tabController.animateToPage(index, duration: const Duration(milliseconds: 400), curve: Curves.linear);
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

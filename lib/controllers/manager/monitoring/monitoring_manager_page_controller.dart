import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../views/suo/monitoring/components/summary_driver_score_section.dart';
import '../../../views/suo/monitoring/components/summary_vehicle_score_section.dart';
import '../../../views/suo/monitoring/components/user_feedback_section.dart';

class MonitoringManagerPageController extends GetxController {
   var index = 0.obs;
  List<Widget> tab = [
    const SummaryVehicleScoreSection(),
    const SummaryDriverScoreSection(),
    const UserFeedbackSection(),
  ];
  PageController tabController = PageController(initialPage: 0, keepPage: false);
  void changeTab(int indexi, {bool? isAnimateTo}) {
    index.value = indexi;
    if (isAnimateTo ?? false) {
      tabController.animateToPage(index.value, duration: const Duration(milliseconds: 400), curve: Curves.linear);
    }
    update();
  }
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
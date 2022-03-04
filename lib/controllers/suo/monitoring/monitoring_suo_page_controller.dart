import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/views/suo/monitoring/components/summary_driver_score_section.dart';
import 'package:par_mobile/views/suo/monitoring/components/summary_fit_dcu_section.dart';
import 'package:par_mobile/views/suo/monitoring/components/summary_vehicle_score_section.dart';
import 'package:par_mobile/views/suo/monitoring/components/user_feedback_section.dart';

class MonitoringSUOPageController extends GetxController {
  var index = 0.obs;
  List<Widget> tab = [
    const SummaryFitDCUSection(),
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

  var isDetailMenuDCU = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
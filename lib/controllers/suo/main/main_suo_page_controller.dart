import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/views/suo/approval/approval_suo_page.dart';
import 'package:par_mobile/views/suo/beranda/beranda_suo_page.dart';
import 'package:get/get.dart';

class MainSUOPageController extends GetxController {
  var dateTimeNow = DateTime.now().obs;
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  int index = 0;
  List<Widget> pages = [
    const BerandaSUOPage(),
    const BerandaSUOPage(),
    const ApprovalSUOPage(),
    const BerandaSUOPage(),
    const BerandaSUOPage(),
  ];
  PageController pageController = PageController(initialPage: 0, keepPage: false);
  void changePage(int indexi, {bool? isAnimateTo}) {
    index = indexi;
    if (isAnimateTo ?? false) {
      pageController.animateToPage(index, duration: const Duration(milliseconds: 400), curve: Curves.linear);
    }
    update();
  }

  getDateTimeNow() {
    dateTimeNow.value = DateTime.now();
  } 

  @override
  void onInit() {
    print("Init Main Driver Page Controller");
    Timer.periodic(Duration(seconds: 1), (Timer t) => getDateTimeNow());

    super.onInit();
  }
}

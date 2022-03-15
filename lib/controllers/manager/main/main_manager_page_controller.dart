import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/views/manager/beranda/beranda_manager_page.dart';
import 'package:par_mobile/views/suo/profile/profile_suo_page.dart';

class MainManagerPageController extends GetxController {
  var dateTimeNow = DateTime.now().obs;
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  int index = 0;
  List<Widget> pages = [
    const BerandaManagerPage(),
    const BerandaManagerPage(),
    const BerandaManagerPage(),
    const BerandaManagerPage(),
    ProfileSUOPage(),
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
    print("Init Main Manager Page Controller");
    pageController = PageController(initialPage: 0, keepPage: false);
    Timer.periodic(Duration(seconds: 1), (Timer t) => getDateTimeNow());

    super.onInit();
  }
}
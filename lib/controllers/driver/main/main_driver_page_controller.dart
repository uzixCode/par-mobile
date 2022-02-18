import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/views/driver/beranda/beranda_driver_page.dart';

class MainDriverPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  int index = 0;
  List<Widget> pages = [
    BerandaDriverPage(),
    BerandaDriverPage(),
    BerandaDriverPage(),
    BerandaDriverPage(),
  ];
  PageController pageController =
      PageController(initialPage: 0, keepPage: false);
  void changePage(int indexi, {bool? isAnimateTo}) {
    index = indexi;
    if (isAnimateTo ?? false)
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 400), curve: Curves.linear);
    update();
  }

  @override
  void onInit() {
    print("Init Main Driver Page Controller");
    super.onInit();
  }
}

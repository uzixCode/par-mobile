import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/views/driver/absensi/absensi_driver_page.dart';
import 'package:par_mobile/views/driver/dcu/dcu_driver_page.dart';
import 'package:par_mobile/views/driver/perjalanan/perjalanan_driver_page.dart';

class UnderlineTextTabbarController extends GetxController {
  int index = 0;
  List<Widget> pages = [
    AbsensiDriverPage(),
    PerjalananDriverPage(),
    DcuDriverPage(),
  ];
  PageController pageController =
      PageController(initialPage: 0, keepPage: false);
  void changePage(int indexi, {bool? isAnimateTo}) {
    index = indexi;
    if (isAnimateTo ?? false)
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    update();
  }
}

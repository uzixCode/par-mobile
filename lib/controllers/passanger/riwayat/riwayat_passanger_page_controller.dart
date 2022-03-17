import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RiwayatPassangerPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  int index = 0;
  List<Widget> pages = [];
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  void changePage(int indexi, {bool? isAnimateTo}) {
    index = indexi;
    if (isAnimateTo ?? false)
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    update();
  }

  @override
  void onInit() {
    print("Init Beranda Driver Page Controller");
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/views/suo/beranda/beranda_suo_page.dart';

class MainSUOPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  int index = 0;
  List<Widget> pages = [
    const BerandaSUOPage(),
    const BerandaSUOPage(),
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

  @override
  void onInit() {
    print("Init Main Driver Page Controller");
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/views/passanger/ptc/ptc_passanger_tab.dart';
import 'package:par_mobile/views/suo/riwayat/components/clock_in_out_riwayat_section.dart';
import 'package:par_mobile/views/suo/riwayat/components/dcu_riwayat_section.dart';
import 'package:par_mobile/views/suo/riwayat/components/ptc_riwayat_section.dart';

class RiwayatPassangerPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  int index = 0;
  List<Widget> pages = [
    //PtcPassangerTab(),
    PTCRiwayatSection(),
    DCURiwayatSection(),
    ClockInOutRiwayatSection()
  ];
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

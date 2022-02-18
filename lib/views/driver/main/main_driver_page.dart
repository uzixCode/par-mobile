import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/main/main_driver_page_controller.dart';
import 'package:par_mobile/views/driver/beranda/beranda_driver_page.dart';
import 'package:par_mobile/widgets/bottombaritem.dart';

class MainDriverPage extends StatelessWidget {
  MainDriverPage({Key? key}) : super(key: key);
  MainDriverPageController mainDriverPageController =
      Get.put(MainDriverPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainDriverPageController>(
      init: Get.find<MainDriverPageController>(),
      builder: (con) => Scaffold(
        body: PageView(
          controller: mainDriverPageController.pageController,
          children: mainDriverPageController.pages,
          onPageChanged: (index) {
            mainDriverPageController.changePage(index);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: con.index,
            onTap: (index) {
              mainDriverPageController.changePage(index, isAnimateTo: true);
            },
            selectedItemColor: allColor.primary,
            items: [
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 0,
                  iconPath: "assets/images/riwayat.png",
                  label: "Riwayat"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 1,
                  iconPath: "assets/images/check.png",
                  label: "Check"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 2,
                  iconPath: "assets/images/izin.png",
                  label: "Izin"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 3,
                  iconPath: "assets/images/Profile.png",
                  label: "Profile"),
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/main/main_suo_page_controller.dart';
import 'package:par_mobile/widgets/bottombaritem.dart';

class MainSUOPage extends StatelessWidget {
  MainSUOPage({Key? key}) : super(key: key);
  MainSUOPageController controller = Get.put(MainSUOPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainSUOPageController>(
      init: Get.find<MainSUOPageController>(),
      builder: (con) => Scaffold(
        body: PageView(
          controller: controller.pageController,
          children: controller.pages,
          onPageChanged: (index) {
            controller.changePage(index);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: con.index,
            onTap: (index) {
              controller.changePage(index, isAnimateTo: true);
            },
            selectedItemColor: allColor.primary,
            items: [
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index, compareIndex: 0, iconPath: "assets/images/riwayat.png", label: "Riwayat"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index, compareIndex: 1, iconPath: "assets/images/check.png", label: "Check"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index, compareIndex: 2, iconPath: "assets/images/izin.png", label: "Izin"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index, compareIndex: 3, iconPath: "assets/images/Profile.png", label: "Profile"),
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/manager/main/main_manager_page_controller.dart';

import '../../../constants/all_color.dart';
import '../../../widgets/bottombaritem.dart';
import '../../../widgets/headermainsection.dart';

class MainManagerPage extends StatelessWidget {
  MainManagerPage({Key? key}) : super(key: key);
  MainManagerPageController controller = Get.put(MainManagerPageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainManagerPageController>(
      initState: (_) => controller.changePage(0),
      init: Get.find<MainManagerPageController>(),
      builder: (con) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              (con.index == 4)
                  ? Container()
                  : HeaderMainSection(
                      greeting: 'Selamat Pagi',
                      name: 'SUNARYO',
                      title: 'Manager',
                      dateTime: controller.dateFormat
                          .format(controller.dateTimeNow.value),
                    ),
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  children: controller.pages,
                  onPageChanged: (index) {
                    controller.changePage(index);
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: con.index,
            onTap: (index) {
              controller.changePage(index, isAnimateTo: true);
            },
            selectedItemColor: allColor.primary,
            items: [
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 0,
                  iconPath: "assets/images/beranda.png",
                  label: "Beranda"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 1,
                  iconPath: "assets/images/riwayat.png",
                  label: "Riwayat"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 2,
                  iconPath: "assets/images/check.png",
                  label: "Approval"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 3,
                  iconPath: "assets/images/izin.png",
                  label: "Monitoring"),
              bottomBarItem.bottomBarItem(
                  currentIndex: con.index,
                  compareIndex: 4,
                  iconPath: "assets/images/Profile.png",
                  label: "Profile"),
            ]),
      ),
    );
  }
}

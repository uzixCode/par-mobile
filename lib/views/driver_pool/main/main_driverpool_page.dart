import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver_pool/main/main_driverpool_page_controller.dart';
import 'package:par_mobile/widgets/bottombaritem.dart';

class MainDriverPoolPage extends StatelessWidget {
  MainDriverPoolPage({Key? key}) : super(key: key);
  MainDriverPoolPageController mainDriverPageController =
      Get.put(MainDriverPoolPageController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.mediaQuery.viewPadding.top,
        ),
        Expanded(
          child: GetBuilder<MainDriverPoolPageController>(
            init: Get.find<MainDriverPoolPageController>(),
            builder: (con) => Scaffold(
              body: PageView(
                controller: mainDriverPageController.pageController,
                children: mainDriverPageController.pages,
                onPageChanged: (index) {
                  mainDriverPageController.changePage(index);
                },
              ),
              bottomNavigationBar: BottomNavigationBar(
                  unselectedLabelStyle: TextStyle(color: allColor.grey),
                  showUnselectedLabels: true,
                  currentIndex: con.index,
                  onTap: (index) {
                    mainDriverPageController.changePage(index,
                        isAnimateTo: true);
                  },
                  selectedItemColor: allColor.primary,
                  items: [
                    bottomBarItem.bottomBarItem(
                        currentIndex: con.index,
                        compareIndex: 0,
                        iconPath: "assets/images/beranda.png",
                        label: "Riwayat"),
                    bottomBarItem.bottomBarItem(
                        currentIndex: con.index,
                        compareIndex: 1,
                        iconPath: "assets/images/riwayat.png",
                        label: "Riwayat"),
                    bottomBarItem.bottomBarItem(
                        currentIndex: con.index,
                        compareIndex: 2,
                        iconPath: "assets/images/check.png",
                        label: "Check"),
                    bottomBarItem.bottomBarItem(
                        currentIndex: con.index,
                        compareIndex: 3,
                        iconPath: "assets/images/izin.png",
                        label: "Izin"),
                    bottomBarItem.bottomBarItem(
                        currentIndex: con.index,
                        compareIndex: 4,
                        iconPath: "assets/images/Profile.png",
                        label: "Profile"),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}

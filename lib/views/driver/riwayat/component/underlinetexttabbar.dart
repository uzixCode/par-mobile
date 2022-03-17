import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/beranda/underlinetexttabbarcontroller.dart';
import 'package:par_mobile/widgets/underlinetextbutton.dart';

class UnderlineTextTabbar extends StatelessWidget {
  UnderlineTextTabbarController underlineTextTabbarController =
      Get.put(UnderlineTextTabbarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UnderlineTextTabbarController>(
      initState: (con) {
        underlineTextTabbarController.pageController = PageController(
            initialPage: underlineTextTabbarController.index, keepPage: true);
      },
      init: Get.find<UnderlineTextTabbarController>(),
      builder: (con) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                UnderlineTextButton(
                  label: "Absensi",
                  isSelected: con.index == 0 ? true : false,
                  onTap: () => con.changePage(0, isAnimateTo: true),
                ),
                UnderlineTextButton(
                  label: "Perjalanan",
                  isSelected: con.index == 1 ? true : false,
                  onTap: () => con.changePage(1, isAnimateTo: true),
                ),
                UnderlineTextButton(
                  label: "DCU",
                  isSelected: con.index == 2 ? true : false,
                  onTap: () => con.changePage(2, isAnimateTo: true),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: con.pageController,
              children: con.pages,
              onPageChanged: (index) {
                con.changePage(index);
              },
            ),
          )
        ],
      ),
    );
  }
}

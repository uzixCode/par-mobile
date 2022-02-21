import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/constants/constants.dart';
import 'package:par_mobile/controllers/suo/approval/approval_suo_page_controller.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/tabbar_item.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  ApprovalSUOPageController controller = Get.put(ApprovalSUOPageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabBarItem(
                    label: "PTC",
                    currentIndex: controller.index.value,
                    compareIndex: 0,
                    onTap: () {
                      controller.changeTab(0, isAnimateTo: true);
                    },
                  ),
                  TabBarItem(
                    label: "DCU",
                    currentIndex: controller.index.value,
                    compareIndex: 1,
                    onTap: () {
                      controller.changeTab(1, isAnimateTo: true);
                    },
                  ),
                  TabBarItem(
                    label: "CLOCK IN/OUT",
                    currentIndex: controller.index.value,
                    compareIndex: 2,
                    onTap: () {
                      controller.changeTab(2, isAnimateTo: true);
                    },
                  ),
                  TabBarItem(
                    label: "DOC",
                    currentIndex: controller.index.value,
                    compareIndex: 3,
                    onTap: () {
                      controller.changeTab(3, isAnimateTo: true);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView(
                controller: controller.tabController,
                children: controller.tab,
                onPageChanged: (index) {
                  controller.changeTab(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buttonSectionApproval(String title) {
    return Container(
      decoration: BoxDecoration(color: allColor.primary, borderRadius: BorderRadius.circular(3)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

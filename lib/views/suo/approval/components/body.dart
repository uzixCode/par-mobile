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
      child: GetBuilder<ApprovalSUOPageController>(
        initState: (_) {
          controller.tabController = PageController(
              initialPage: controller.index.value, keepPage: true);
        },
        builder: (con) => Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: TabBarItem(
                      label: "PTC",
                      currentIndex: con.index.value,
                      compareIndex: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      onTap: () {
                        con.changeTab(0, isAnimateTo: true);
                      },
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Flexible(
                    child: TabBarItem(
                      label: "DCU",
                      currentIndex: con.index.value,
                      compareIndex: 1,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      onTap: () {
                        con.changeTab(1, isAnimateTo: true);
                      },
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Flexible(
                    child: TabBarItem(
                      label: "CLOCK IN/OUT",
                      currentIndex: con.index.value,
                      compareIndex: 2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      onTap: () {
                        con.changeTab(2, isAnimateTo: true);
                      },
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Flexible(
                    child: TabBarItem(
                      label: "DOC",
                      currentIndex: con.index.value,
                      compareIndex: 3,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      onTap: () {
                        con.changeTab(3, isAnimateTo: true);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: PageView(
                  controller: con.tabController,
                  children: con.tab,
                  onPageChanged: (index) {
                    con.changeTab(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

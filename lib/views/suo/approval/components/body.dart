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
        init: Get.find<ApprovalSUOPageController>(),
        builder: (con) => Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabBarItem(
                    label: "PTC",
                    currentIndex: con.index.value,
                    compareIndex: 0,
                    onTap: () {
                      con.changeTab(0, isAnimateTo: true);
                    },
                  ),
                  TabBarItem(
                    label: "DCU",
                    currentIndex: con.index.value,
                    compareIndex: 1,
                    onTap: () {
                      con.changeTab(1, isAnimateTo: true);
                    },
                  ),
                  TabBarItem(
                    label: "CLOCK IN/OUT",
                    currentIndex: con.index.value,
                    compareIndex: 2,
                    onTap: () {
                      con.changeTab(2, isAnimateTo: true);
                    },
                  ),
                  TabBarItem(
                    label: "DOC",
                    currentIndex: con.index.value,
                    compareIndex: 3,
                    onTap: () {
                      con.changeTab(3, isAnimateTo: true);
                    },
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

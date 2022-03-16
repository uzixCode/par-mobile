import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/manager/monitoring/monitoring_manager_page_controller.dart';

import '../../../../widgets/tabbar_item.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  MonitoringManagerPageController controller =
      Get.put(MonitoringManagerPageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GetBuilder<MonitoringManagerPageController>(
          initState: (_) => controller.changeTab(0),
          builder: (con) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TabBarItem(
                    label: "Vehicle Score",
                    currentIndex: controller.index.value,
                    compareIndex: 0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    onTap: () {
                      controller.changeTab(0, isAnimateTo: true);
                    },
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  TabBarItem(
                    label: "Driver Score",
                    currentIndex: controller.index.value,
                    compareIndex: 1,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    onTap: () {
                      controller.changeTab(1, isAnimateTo: true);
                    },
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  TabBarItem(
                    label: "User Feedback",
                    currentIndex: controller.index.value,
                    compareIndex: 2,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    onTap: () {
                      controller.changeTab(2, isAnimateTo: true);
                    },
                  ),
                ],
              ),
              const SizedBox(
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
      ),
    );
  }
}

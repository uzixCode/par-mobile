import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/suo/monitoring/monitoring_suo_page_controller.dart';
import 'package:par_mobile/widgets/tabbar_item.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  MonitoringSUOPageController controller =
      Get.put(MonitoringSUOPageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GetBuilder<MonitoringSUOPageController>(
          initState: (_) => controller.changeTab(0),
          builder: (con) => Column(
            children: [
              SizedBox(
                width: Get.width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabBarItem(
                      label: "DCU",
                      currentIndex: controller.index.value,
                      compareIndex: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      onTap: () {
                        controller.changeTab(0, isAnimateTo: true);
                      },
                      maxLines: 3,
                    ),
                    TabBarItem(
                      label: "Vehicle\nScore",
                      currentIndex: controller.index.value,
                      compareIndex: 1,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      onTap: () {
                        controller.changeTab(1, isAnimateTo: true);
                      },
                      maxLines: 3,
                    ),
                    TabBarItem(
                      label: "Driver\nScore",
                      currentIndex: controller.index.value,
                      compareIndex: 2,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      onTap: () {
                        controller.changeTab(2, isAnimateTo: true);
                      },
                      maxLines: 3,
                    ),
                    TabBarItem(
                      label: "User\nFeedback",
                      currentIndex: controller.index.value,
                      compareIndex: 3,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      onTap: () {
                        controller.changeTab(3, isAnimateTo: true);
                      },
                      maxLines: 3,
                    ),
                  ],
                ),
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

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: TabBarItem(
                      label: "DCU",
                      currentIndex: controller.index.value,
                      compareIndex: 0,
                      onTap: () {
                        controller.changeTab(0, isAnimateTo: true);
                      },
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Flexible(
                    child: TabBarItem(
                      label: "Vehicle Score",
                      currentIndex: controller.index.value,
                      compareIndex: 1,
                      onTap: () {
                        controller.changeTab(1, isAnimateTo: true);
                      },
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Flexible(
                    child: TabBarItem(
                      label: "Driver Score",
                      currentIndex: controller.index.value,
                      compareIndex: 2,
                      onTap: () {
                        controller.changeTab(2, isAnimateTo: true);
                      },
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Flexible(
                    child: TabBarItem(
                      label: "User Feedback",
                      currentIndex: controller.index.value,
                      compareIndex: 3,
                      onTap: () {
                        controller.changeTab(3, isAnimateTo: true);
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/suo/riwayat/riwayat_suo_page_controller.dart';

import '../../../../widgets/tabbar_item.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  RiwayatSUOPageController controller = Get.put(RiwayatSUOPageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<RiwayatSUOPageController>(
        initState: (_) => controller.changeTab(0),
        builder: (con) => Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TabBarItem(
                    label: "PTC",
                    currentIndex: con.index.value,
                    compareIndex: 0,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    onTap: () {
                      con.changeTab(0, isAnimateTo: true);
                    },
                  ),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  TabBarItem(
                    label: "DCU",
                    currentIndex: con.index.value,
                    compareIndex: 1,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    onTap: () {
                      con.changeTab(1, isAnimateTo: true);
                    },
                  ),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  TabBarItem(
                    label: "CLOCK IN/OUT",
                    currentIndex: con.index.value,
                    compareIndex: 2,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    onTap: () {
                      con.changeTab(2, isAnimateTo: true);
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/passanger/riwayat/riwayat_passanger_page_controller.dart';
import 'package:par_mobile/widgets/tabbar_item.dart';

import '../../../constants/all_color.dart';

class RiwayatPassangerPage extends StatelessWidget {
  RiwayatPassangerPage({Key? key}) : super(key: key);
  RiwayatPassangerPageController riwayatPassangerPageController =
      Get.put(RiwayatPassangerPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RiwayatPassangerPageController>(
      initState: (con) {
        riwayatPassangerPageController.pageController = PageController(
            initialPage: riwayatPassangerPageController.index, keepPage: true);
      },
      builder: (con) => Scaffold(
          body: Column(children: [
        Card(
          elevation: 10,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Get.width * 0.05),
              bottomRight: Radius.circular(Get.width * 0.05),
            ),
          ),
          color: allColor.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width * 0.17,
                      height: Get.width * 0.17,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                "assets/images/background.png",
                                cacheHeight: 183,
                                cacheWidth: 183,
                              ).image),
                          color: allColor.green,
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Pagi,",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            "Uzix Code",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.04),
                          ),
                        ),
                        Text(
                          "SUO/Korlap",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  riwayatPassangerPageController.dateFormat
                      .format(riwayatPassangerPageController.dateTimeNow),
                  textAlign: TextAlign.right,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
            child: SizedBox(
          width: Get.width * 0.85,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    // scrollDirection: Axis.horizontal,
                    children: [
                      TabBarItem(
                        label: "PTC",
                        currentIndex: con.index,
                        compareIndex: 0,
                        onTap: () => con.changePage(0, isAnimateTo: true),
                        color: allColor.secondary,
                        margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                      ),
                      TabBarItem(
                        label: "DCU",
                        currentIndex: con.index,
                        compareIndex: 1,
                        onTap: () => con.changePage(1, isAnimateTo: true),
                        color: allColor.secondary,
                        margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                      ),
                      TabBarItem(
                        label: "CLOCK IN/OUT",
                        currentIndex: con.index,
                        compareIndex: 2,
                        onTap: () => con.changePage(2, isAnimateTo: true),
                        color: allColor.secondary,
                        margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                      ),
                    ],
                  ),
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
        ))
      ])),
    );
  }
}

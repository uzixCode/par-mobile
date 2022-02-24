import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

import 'package:par_mobile/controllers/widgets/yearpickercontroller.dart';

Future<int?> pickYear() async {
  int? pickedYears;
  await Get.dialog(Center(
      child: SizedBox(
          height: Get.height * 0.70,
          width: Get.width * 0.70,
          child: LayoutBuilder(
            builder: (context, screen) => GetBuilder<YearPickerController>(
                init: YearPickerController(constraints: screen),
                builder: (con) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screen.maxWidth * 0.05)),
                    clipBehavior: Clip.antiAlias,
                    child: con.isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            children: [
                              Container(
                                width: double.maxFinite,
                                color: allColor.primary,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(
                                    "Pilih Tahun : " +
                                        con.years[con.index].toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screen.maxWidth * 0.07),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListWheelScrollView(
                                    controller: con.scrollController,
                                    onSelectedItemChanged: (index) {
                                      con.changeIndex(index);
                                    },
                                    physics: FixedExtentScrollPhysics(),
                                    diameterRatio: 2,
                                    itemExtent: screen.maxHeight * 0.30,
                                    children: con.cards),
                              ),
                              Container(
                                width: double.maxFinite,
                                color: allColor.primary,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () => Get.back(),
                                        child: Text(
                                          "Batal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: screen.maxWidth * 0.07),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          pickedYears = con.years[con.index];
                                          Get.back();
                                        },
                                        child: Text(
                                          "OK",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: screen.maxWidth * 0.07),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  );
                }),
          ))));
  return pickedYears;
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/widgets/monthpickercontroller.dart';
import 'package:par_mobile/models/widgets/monthmodel.dart';

Future<Monthmodel?> pickMonth() async {
  Monthmodel? picked;
  await Get.dialog(Center(
      child: SizedBox(
          height: Get.height * 0.70,
          width: Get.width * 0.70,
          child: LayoutBuilder(
            builder: (context, screen) => GetBuilder<MonthPickerController>(
                init: MonthPickerController(constraints: screen),
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
                                    "Pilih Bulan : " +
                                        con.data[con.index].bulan,
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
                                          picked = con.data[con.index];
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
  return picked;
}

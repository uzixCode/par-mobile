import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/monitoring/monitoring_suo_page_controller.dart';
import 'package:par_mobile/views/suo/monitoring_dcu_detail/monitoring_dcu_detail_page.dart';
import 'package:par_mobile/widgets/basecard.dart';

import '../../../../widgets/costumstatbar.dart';

class SummaryFitDCUSection extends StatelessWidget {
  const SummaryFitDCUSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MonitoringSUOPageController controller =
        Get.put(MonitoringSUOPageController());

    return Obx(
      () => (controller.isDetailMenuDCU.value)
          ? MonitoringDCUDetailSection()
          : BaseCard(
              trailing: Container(),
              leading: Container(),
              label: "RANGKUMAN FIT UNFIT",
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    children: [
                      TextFormField(
                        onTap: () async {
                          await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050));
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: "Cari Tanggal Monitoring",
                          hintStyle: TextStyle(fontSize: Get.width * 0.035),
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: allColor.primary,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  controller.isDetailMenuDCU.value = true;
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 15, top: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "01 Des 2021",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        Get.width * 0.035),
                                              ),
                                              Text(
                                                "1/8",
                                                style: TextStyle(
                                                    color: allColor.primary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        Get.width * 0.035),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: CostumStatBar(
                                                  height: 10,
                                                  persentage: 13,
                                                  width: double.infinity,
                                                  barColor: Colors.grey
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                              SizedBox(
                                                width: Get.width * 0.05,
                                              ),
                                              Text(
                                                "13%",
                                                maxLines: 4,
                                                style: TextStyle(
                                                    fontSize: Get.width * 0.05,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "FIT : 1 | UNFIT : 0",
                                            style: TextStyle(
                                                fontSize: Get.width * 0.03),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

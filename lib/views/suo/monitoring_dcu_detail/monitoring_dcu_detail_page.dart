import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';

import '../../../controllers/suo/monitoring/monitoring_dcu_controller.dart';

class MonitoringDCUDetailSection extends StatelessWidget {
  const MonitoringDCUDetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MonitoringDCUController controller =
        Get.put(MonitoringDCUController());
    return BaseCard(
      label: "DETAIL MONITORING (01 DES 2021)",
      leading: InkWell(
        child: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        onTap: () {
          controller.isDetailMenuDCU.value = false;
        },
      ),
      trailing: Container(),
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
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  hintText: "Cari Driver",
                  hintStyle: TextStyle(fontSize: Get.width * 0.03),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15, top: 15),
                            child: Row(
                              children: [
                                Container(
                                  width: Get.width * 0.17,
                                  height: Get.width * 0.17,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/background.png")),
                                      color: allColor.green,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: Get.width * 0.03,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Bambang Wijaya",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: Get.width * 0.035),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "4 Des 2021 07:55 WIB",
                                              maxLines: 2,
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Get.width * 0.03),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: allColor.primary,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "BD - DB",
                                            style: TextStyle(
                                                fontSize: Get.width * 0.035,
                                                fontWeight: FontWeight.bold,
                                                color: allColor.primary),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: allColor.light_red,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("High Temperature",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            Get.width * 0.025)),
                                                Text("39 C",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            Get.width * 0.04))
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.01,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: allColor.light_red,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("High Blood Pressure",
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            Get.width * 0.025)),
                                                Text("120/90",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            Get.width * 0.04))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

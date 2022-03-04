import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/monitoring/monitoring_suo_page_controller.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

class MonitoringDCUDetailSection extends StatelessWidget {
  const MonitoringDCUDetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MonitoringSUOPageController controller =
        Get.put(MonitoringSUOPageController());
    return BaseCard(
      label: "DETAIL MONITORING (01 DES 2021)",
      trailing: RectangleButton(
          color: Colors.white,
          onTap: () {
            controller.isDetailMenuDCU.value = false;
          },
          child: Text(
            "Kembali",
            style: TextStyle(color: allColor.primary),
          )),
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
                  hintText: "Cari Driver",
                  hintStyle: TextStyle(fontSize: 12),
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
                        onTap: () {},
                        child: Column(
                          children: [
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
    );
  }
}

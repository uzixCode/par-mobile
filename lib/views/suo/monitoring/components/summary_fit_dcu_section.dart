import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SummaryFitDCUSection extends StatelessWidget {
  const SummaryFitDCUSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "RANGKUMAT FIT UNFIT",
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
                  hintStyle: TextStyle(fontSize: 12),
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
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 15, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "01 Des 2021",
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "1/8",
                                        style: TextStyle(color: allColor.primary, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: LinearPercentIndicator(
                                          lineHeight: 10.0,
                                          linearStrokeCap: LinearStrokeCap.roundAll,
                                          percent: 0.13,
                                          barRadius: Radius.circular(15),
                                          animationDuration: 2000,
                                          animation: true,
                                          progressColor: allColor.green,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.05,
                                      ),
                                      const Text(
                                        "13%",
                                        maxLines: 4,
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "FIT : 1 | UNFIT : 0",
                                    style: TextStyle(fontSize: 12),
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
    );
  }
}

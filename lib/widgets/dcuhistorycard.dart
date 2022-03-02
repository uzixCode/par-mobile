import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/dcucard.dart';

class DcuHistoryCard extends StatelessWidget {
  DcuHistoryCard({Key? key, this.isHeader = false}) : super(key: key);
  bool isHeader;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            color: allColor.light_grey.withOpacity(0.3),
            child: Padding(
              padding: isHeader == null || isHeader != true
                  ? const EdgeInsets.symmetric(vertical: 5)
                  : const EdgeInsets.symmetric(vertical: 8),
              child: isHeader == null || isHeader != true
                  ? Container()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Text("TANGGAL",
                                    style: TextStyle(
                                      color: allColor.grey,
                                    )))),
                        Expanded(
                            child: Center(
                                child: Text("SUHU",
                                    style: TextStyle(
                                      color: allColor.grey,
                                    )))),
                        Expanded(
                            flex: 3,
                            child: Center(
                                child: Text("TEKANAN DARAH",
                                    style: TextStyle(
                                      color: allColor.grey,
                                    )))),
                      ],
                    ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 2,
          ),
          Container(
            // color: allColor.light_grey.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 2,
                      child: Center(
                          child: Text("04 Dec 2019",
                              style: TextStyle(
                                color: allColor.grey,
                              )))),
                  Expanded(
                      child: Center(
                          child: DcuCard(
                    color: allColor.dcu_sehat,
                    content: "24 C",
                  ))),
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: UnconstrainedBox(
                        child: DcuCard(
                          color: allColor.dcu_sedang,
                          content: "120/80 mmHg",
                        ),
                      ))),
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 2,
          ),
          Container(
            // color: allColor.light_grey.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 2,
                      child: Center(
                          child: Text("04 Dec 2019",
                              style: TextStyle(
                                color: allColor.grey,
                              )))),
                  Expanded(
                      child: Center(
                          child: DcuCard(
                    color: allColor.dcu_sakit,
                    content: "37 C",
                  ))),
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: UnconstrainedBox(
                        child: DcuCard(
                          color: allColor.dcu_sakit,
                          content: "160/100 mmHg",
                        ),
                      ))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

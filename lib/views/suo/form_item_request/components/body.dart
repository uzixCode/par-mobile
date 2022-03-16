import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/suo/form_item_request/form_item_request_controller.dart';

import '../../../../constants/all_color.dart';
import '../../../../widgets/rectangle_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormItemRequestController con = FormItemRequestController();
    TextStyle defaultTitle = TextStyle(fontSize: Get.width * 0.035);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade200, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              shadowColor: Colors.grey,
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: const {1: FractionColumnWidth(0.65)},
                      children: [
                        _tableRowContent("Nomor", "72367",
                            isCustomWidget: false),
                        _tableRowContent("Jenis Barang", "",
                            isCustomWidget: true,
                            widgetCustom: TextFormField(
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(5),
                                  isDense: true),
                            )),
                        _tableRowContent("Jumlah", "",
                            isCustomWidget: true,
                            widgetCustom: Obx(
                              () => Container(
                                width: Get.width * 0.25,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        padding: const EdgeInsets.all(3),
                                        child: InkWell(
                                          onTap: () => con.subtractItem(),
                                          child: Icon(
                                            Icons.remove,
                                            color: allColor.primary,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      Text(con.totalItem.toString()),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        padding: const EdgeInsets.all(3),
                                        child: InkWell(
                                          onTap: () => con.sumItem(),
                                          child: Icon(
                                            Icons.add,
                                            color: allColor.primary,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Keterangan",
                      style: defaultTitle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: Get.width * 0.25,
              child: RectangleButton(
                onTap: () {},
                color: Colors.black,
                alignment: Alignment.center,
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: Get.width * 0.04,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  TableRow _tableRowContent(String label, String value,
      {required bool isCustomWidget, Widget? widgetCustom}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: Get.width * 0.035),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: (isCustomWidget)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ": ",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                    Flexible(child: widgetCustom!),
                  ],
                )
              : Text(
                  ": $value",
                  style: TextStyle(
                      color: Colors.black, fontSize: Get.width * 0.035),
                ),
        ),
      ],
    );
  }
}

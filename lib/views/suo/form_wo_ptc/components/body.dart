import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/rectangle_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      columnWidths: const {1: FractionColumnWidth(0.65)},
                      children: [
                        _tableRowContent("Nomor", "72367"),
                        _tableRowContent("Nomor Polisi", "D 1234 BD"),
                        _tableRowContent("Nomor Rangka", "3209268800423"),
                        _tableRowContent("Nomor Mesin", "218317"),
                        _tableRowContent("Kilometer", "210 KM")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Keluhan"),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Estimasi Biaya dan Waktu Perbaikan"),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(),
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

  TableRow _tableRowContent(String label, String value) {
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
          child: Text(
            ": $value",
            style: TextStyle(color: Colors.black, fontSize: Get.width * 0.035),
          ),
        ),
      ],
    );
  }
}

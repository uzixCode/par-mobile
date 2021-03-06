import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverInformationSection extends StatelessWidget {
  const DriverInformationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Table(
          columnWidths: const {1: FractionColumnWidth(0.65)},
          children: [
            _tableRowContent("Nama Pengemudi", "Bambang Wijaya"),
            _tableRowContent("Nomer Telepon", "08122334455"),
            _tableRowContent("Nomer SIM Pengemudi", "3209268800423"),
            _tableRowContent("Unit Operasi", "BD - DO"),
            _tableRowContent("Alokasi", "DBD")
          ],
        ),
      ],
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

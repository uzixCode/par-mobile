import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleInformationSection extends StatelessWidget {
  const VehicleInformationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Table(
          columnWidths: const {1: FractionColumnWidth(0.65)},
          children: [
            _tableRowContent("Kilometer", "210 KM"),
            _tableRowContent("Nomer Polisi", "D 1234 BD"),
            _tableRowContent("Merk & Type", "Avanza Tipe ABC"),
            _tableRowContent("Nomer Rangka", "128397213"),
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

import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/models/widgets/monthmodel.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/monthpicker.dart';
import 'package:par_mobile/widgets/yearpicker.dart';

class AbsensiDriverPage extends StatelessWidget {
  AbsensiDriverPage({Key? key}) : super(key: key);
  final bulan = TextEditingController();
  final tahun = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 3,
                child: TextField(
                  controller: bulan,
                  onTap: () async {
                    Monthmodel? picked = await pickMonth();
                    if (picked != null) {
                      print(picked.bulan);
                      bulan.text = picked.bulan;
                    }
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                      suffixIconConstraints:
                          BoxConstraints(minWidth: 23, maxHeight: 20),
                      hintText: "Bulan",
                      suffixIcon: RotatedBox(
                          quarterTurns: 3, child: Icon(Icons.chevron_left))),
                )),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 2,
                child: TextField(
                  controller: tahun,
                  readOnly: true,
                  onTap: () async {
                    int? picked = await pickYear();
                    if (picked != null) {
                      print(picked);
                      tahun.text = picked.toString();
                    }
                  },
                  decoration: InputDecoration(
                    suffixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    hintText: "Tahun",
                    suffixIcon: RotatedBox(
                      quarterTurns: 3,
                      child: const Icon(Icons.chevron_left),
                    ),
                  ),
                )),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 2,
                child: CostumFlatButton(
                    color: allColor.primary,
                    child: const Text(
                      "Cari",
                      style: const TextStyle(color: Colors.white),
                    )))
          ],
        )
      ],
    ));
  }
}

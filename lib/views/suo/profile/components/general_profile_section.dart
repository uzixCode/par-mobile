import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

import '../../../../widgets/costumFlatButton.dart';
import '../../../driver/profile/components/datatilecard.dart';

class GeneralProfileSection extends StatelessWidget {
  const GeneralProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BaseCard(
          label: "Profil Saya",
          trailing: CostumFlatButton(
              onTap: () => Get.dialog(UnconstrainedBox(
                      child: SizedBox(
                    width: Get.width * 0.90,
                    child: Material(
                      child: Container(
                        child: Center(
                          child: SizedBox(
                            width: Get.width * 0.80,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () => Get.back(),
                                      icon: Icon(Icons.close)),
                                ),
                                Align(
                                  child: Text(
                                    "UBAH PROFIL",
                                    style: TextStyle(
                                        color: allColor.primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.04),
                                  ),
                                ),
                                DataTileCard(label: "Email"),
                                DataTileCard(label: "Alamat"),
                                DataTileCard(label: "Nomor Handphone"),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: CostumFlatButton(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 25),
                                      color: allColor.green,
                                      child: Text(
                                        "Simpan",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: Get.width * 0.035,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))),
              color: allColor.green,
              child: Text(
                "Ubah Profil",
                style: TextStyle(
                  color: Colors.white,
                  // fontSize: Get.width * 0.04,
                ),
              )),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                    initialValue: "20010021",
                    enabled: false,
                    decoration: InputDecoration(
                      fillColor: allColor.grey.withOpacity(0.2),
                      filled: true,
                      isDense: true,
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  initialValue: "Bambangwjy@gmail.com",
                  enabled: false,
                  decoration: const InputDecoration(
                    isDense: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Alamat",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  initialValue: "Jl. Gatot Soebroto Jakarta Selatan",
                  enabled: false,
                  decoration: const InputDecoration(
                    isDense: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Nomor Handphone",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  initialValue: "08123456789",
                  enabled: false,
                  decoration: const InputDecoration(
                    isDense: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Nomor Handphone",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  initialValue: "08123456789",
                  enabled: false,
                  decoration: const InputDecoration(
                    isDense: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

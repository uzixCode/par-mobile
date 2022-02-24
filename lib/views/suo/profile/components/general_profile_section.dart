import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

class GeneralProfileSection extends StatelessWidget {
  const GeneralProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BaseCard(
          label: "Profil Saya",
          trailing: RectangleButton(
            child: Text(
              "Ubah Profile",
              style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            color: allColor.green,
          ),
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

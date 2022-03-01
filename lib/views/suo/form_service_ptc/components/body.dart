import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/form_service/form_service_ptc_controller.dart';
import 'package:par_mobile/views/suo/form_service_ptc/components/driver_information_section.dart';
import 'package:par_mobile/views/suo/form_service_ptc/components/vehicle_information_section.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  FormServicePTCController controller = Get.put(FormServicePTCController());

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyle(
        color: allColor.primary, fontSize: 16, fontWeight: FontWeight.bold);
    return GetBuilder<FormServicePTCController>(
      init: Get.find<FormServicePTCController>(),
      builder: (con) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A  INFORMASI",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Jenis Service",
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio<int>(
                      value: 1,
                      groupValue: con.serviceTypeId.value,
                      activeColor: allColor.primary,
                      onChanged: (val) {
                        con.setRadioServiceType(val);
                      },
                    ),
                    const Text(
                      'Rutin',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: con.serviceTypeId.value,
                      activeColor: allColor.primary,
                      onChanged: (val) {
                        con.setRadioServiceType(val);
                      },
                    ),
                    const Text(
                      'Adhoc',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Nama Bengkel Tujuan",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Kelengkapan",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Buku Service",
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio<int>(
                      value: 1,
                      groupValue: con.serviceBookId.value,
                      activeColor: allColor.primary,
                      onChanged: (val) {
                        con.setRadioServiceBook(val);
                      },
                    ),
                    const Text(
                      'Ada',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: con.serviceBookId.value,
                      activeColor: allColor.primary,
                      onChanged: (val) {
                        con.setRadioServiceBook(val);
                      },
                    ),
                    const Text(
                      'Tidak Ada',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "B  INFORMASI PENGEMUDI",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const DriverInformationSection(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "C  PERMOHONAN TINDAKAN",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "D  TINDAKAN KOREKSI",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "B  INFORMASI KENDARAAN",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const VehicleInformationSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

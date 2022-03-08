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
        color: allColor.primary,
        fontSize: Get.width * 0.04,
        fontWeight: FontWeight.bold);
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
                Text(
                  "Jenis Service",
                  style: TextStyle(fontSize: Get.width * 0.035),
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
                    Text(
                      'Rutin',
                      style: TextStyle(fontSize: Get.width * 0.04),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: con.serviceTypeId.value,
                      activeColor: allColor.primary,
                      onChanged: (val) {
                        con.setRadioServiceType(val);
                      },
                    ),
                    Text(
                      'Adhoc',
                      style: TextStyle(
                        fontSize: Get.width * 0.04,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Nama Bengkel Tujuan",
                  style: TextStyle(fontSize: Get.width * 0.035),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Kelengkapan",
                  style: TextStyle(fontSize: Get.width * 0.035),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Buku Service",
                  style: TextStyle(fontSize: Get.width * 0.03),
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
                    Text(
                      'Ada',
                      style: TextStyle(fontSize: Get.width * 0.04),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: con.serviceBookId.value,
                      activeColor: allColor.primary,
                      onChanged: (val) {
                        con.setRadioServiceBook(val);
                      },
                    ),
                    Text(
                      'Tidak Ada',
                      style: TextStyle(
                        fontSize: Get.width * 0.04,
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

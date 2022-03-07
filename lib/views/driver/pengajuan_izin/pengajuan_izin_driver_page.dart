import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/izinkuotacard.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class PengajuanIzinDriverPage extends StatefulWidget {
  PengajuanIzinDriverPage({Key? key}) : super(key: key);

  @override
  State<PengajuanIzinDriverPage> createState() =>
      _PengajuanIzinDriverPageState();
}

class _PengajuanIzinDriverPageState extends State<PengajuanIzinDriverPage> {
  final status = TextEditingController(text: "Sakit");
  final tanggal = TextEditingController();
  DateTime? pickedTanggal;
  final format = DateFormat("dd MMMM yyyy");
  void pickTanggal() async {
    pickedTanggal = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        lastDate: DateTime.now());
    if (pickedTanggal != null) {
      tanggal.text = format.format(pickedTanggal!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Pengajuan Izin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 5),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: Get.height - (AppBar().preferredSize.height + 25),
            width: Get.width * 0.90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: IzinKuotaCard(
                        color: allColor.green,
                        kuota: "13",
                        label: "Kuota Cuti",
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: IzinKuotaCard(
                        color: allColor.primary,
                        kuota: "13",
                        label: "Terpakai",
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: IzinKuotaCard(
                        color: allColor.grey,
                        kuota: "1",
                        label: "Izin",
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: IzinKuotaCard(
                        color: allColor.red,
                        kuota: "0",
                        label: "Sakit",
                      )),
                    ],
                  ),
                ),
                Text(
                  "Status Absensi",
                  style: TextStyle(
                      color: allColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.04),
                ),
                SizedBox(
                  height: 15,
                ),
                RoundedTextField(
                  controller: status,
                  readOnly: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButton<String>(
                        value: status.text,
                        isExpanded: true,
                        underline: Container(),
                        // isDense: true,
                        icon: Icon(Icons.arrow_drop_down),
                        items: [
                          DropdownMenuItem(
                              value: "Sakit", child: Text("Sakit")),
                          DropdownMenuItem(value: "Izin", child: Text("Izin")),
                          DropdownMenuItem(value: "Cuti", child: Text("Cuti")),
                        ],
                        onChanged: (value) {
                          print(value.toString());
                          status.text = value!;
                          setState(() {});
                        }),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Tanggal",
                  style: TextStyle(
                      color: allColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.04),
                ),
                SizedBox(
                  height: 15,
                ),
                RoundedTextField(
                  controller: tanggal,
                  readOnly: true,
                  onTap: () => pickTanggal(),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Keterangan",
                  style: TextStyle(
                      color: allColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.04),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: RoundedTextField(
                    padding: EdgeInsets.all(12),
                    maxLines: 1000,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CostumFlatButton(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          color: allColor.red,
                          child: Text(
                            "Batal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.04,
                                fontWeight: FontWeight.bold),
                          )),
                      CostumFlatButton(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          color: allColor.secondary,
                          child: Text(
                            "Simpan",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.04,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

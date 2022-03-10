import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/costumTable.dart';

class SuratPerintahKerjaLembur extends StatelessWidget {
  SuratPerintahKerjaLembur({Key? key}) : super(key: key);
  TextStyle style =
      TextStyle(fontSize: Get.width * 0.028, fontWeight: FontWeight.bold);
  TextStyle style2 = TextStyle(fontSize: Get.width * 0.023);
  String spacer = "    : ";
  @override
  Widget build(BuildContext context) {
    double parafSize = Get.width * 0.029;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Center(child: Text("FORMULIR")),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Image.asset("assets/images/brand.png")),
                          Expanded(
                              flex: 4,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset("assets/images/spkl.png"),
                              )),
                          Expanded(
                              child:
                                  Image.asset("assets/images/certified.png")),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CostumTable(row: [
                            [
                              Text(
                                "NAMA DRIVER",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "Bambang Hidayat",
                                style: style,
                              )
                            ],
                            [
                              Text(
                                "N.I.P",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "00000000123",
                                style: style,
                              )
                            ],
                            [
                              Text(
                                "NO. POLISI",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "B 1879 KU",
                                style: style,
                              )
                            ],
                            [
                              Text(
                                "NO. PWO/THN",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "",
                                style: style,
                              )
                            ],
                          ]),
                          CostumTable(row: [
                            [
                              Text(
                                "NOMOR SPKL",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "Bambang Hidayat",
                                style: style,
                              )
                            ],
                            [
                              Text(
                                "TANGGAL",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "00000000123",
                                style: style,
                              )
                            ],
                            [
                              Text(
                                "NAMA USER",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "B 1879 KU",
                                style: style,
                              )
                            ],
                            [
                              Text(
                                "JABATAN",
                                style: style,
                              ),
                              Text(
                                spacer,
                                style: style,
                              ),
                              Text(
                                "",
                                style: style,
                              )
                            ],
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Jam Mulai Lembur"),
                              Text("            : "),
                              Text("17:01"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Jam Selesai Lembur"),
                              Text("         : "),
                              Text("17:01"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Jumlah Jam Lembur Riil"),
                              Text("  : "),
                              Text("17:01"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Hal-Hal Yang Dikerjakan"),
                                  Text("  : "),
                                ],
                              ).paddingOnly(bottom: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "\u2022 Mengantarkan user ke daerah Y untuk dinner meeting"),
                                  Text(
                                      "\u2022 Mengantarkan user kembali ke kantor"),
                                ],
                              ).paddingOnly(left: 8),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Pemohon/Diajukan oleh:",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                  Text(
                                    "13-08-2021  09:35",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                ],
                              ).paddingOnly(bottom: 50),
                              Column(
                                children: [
                                  Text(
                                    "Bambang Hidayat",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                  Text(
                                    "Driver",
                                    style: TextStyle(
                                        fontSize: parafSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Diverifikasi oleh:",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                  Text(
                                    "13-08-2021  09:35",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                ],
                              ).paddingOnly(bottom: 50),
                              Column(
                                children: [
                                  Text(
                                    "Bambang Hidayat",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                  Text(
                                    "Spv. Unit Operasi",
                                    style: TextStyle(
                                        fontSize: parafSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Diketahui oleh:",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                  Text(
                                    "Menanti Persetujuan",
                                    style: TextStyle(
                                        color: allColor.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: parafSize),
                                  ),
                                ],
                              ).paddingOnly(bottom: 50),
                              Column(
                                children: [
                                  Text(
                                    "Bambang Hidayat",
                                    style: TextStyle(fontSize: parafSize),
                                  ),
                                  Text(
                                    "User",
                                    style: TextStyle(
                                        fontSize: parafSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CostumFlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 33),
                              color: allColor.grey,
                              child: Text(
                                "Back",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          CostumFlatButton(
                              color: allColor.secondary,
                              child: Text(
                                "Download",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ))
                    ],
                  ),
                ),
                Text(
                  "Tindakan persetujuan atas dokumen ini dilakukan melalui sistem elektronik. Dokumen elektronik ini sah dan diakui Perseroan meskipun tanpa tanda tangan pejabat terkait. Seluruh informasi yang terdapat dalam dokumen ini bersifat INTERNAL dan hanya diperuntukkan untuk kepentingan internal Perseroan. Setiap perbuatan yang mengakibatkan informasi dalam dokumen ini dapat diketahui oleh pihak-pihak yang tidak berhak, menjadi tanggungjawab personal dan dapat dikenai sanksi indispliner dan/atau sanksi hukum sesuai ketentuan yang berlaku.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: Get.width * 0.01),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

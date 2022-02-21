import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';
import 'package:par_mobile/widgets/tablerow_content.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lakukan Update Dokumen Dengan Rincian Sebagai Berikut",
              textAlign: TextAlign.center,
              style: TextStyle(color: allColor.primary, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(color: allColor.secondary, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Table(
                      columnWidths: const {1: FractionColumnWidth(0.7)},
                      children: [
                        tableRowContent(title: 'Pengemudi', valueContent: 'Bambang Wijaya', isCustomContent: false),
                        tableRowContent(title: 'Unit Kerja', valueContent: 'BD - BD', isCustomContent: false),
                        tableRowContent(title: 'Plat Nomor', valueContent: 'B123BD', isCustomContent: false),
                        tableRowContent(title: 'Nama Dokumen', valueContent: 'KEUR Driver', isCustomContent: false),
                        tableRowContent(title: 'Tanggal Exp', valueContent: '22 Oktober 2021', isCustomContent: false),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Upload Dokumen Terbaru", style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.file_upload_outlined,
                            size: 45,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width * 0.35,
              child: RectangleButton(
                onTap: () {},
                color: allColor.green,
                alignment: Alignment.center,
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: Get.width * 0.04, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
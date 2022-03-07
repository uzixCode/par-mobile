import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_cico_detail/components/edit_cico_dialog.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';
import 'package:par_mobile/widgets/tablerow_content.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lakukan Approval Terhadap Data Clock In dan Clock Out Driver Dengan Rincian Berikut",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: allColor.primary, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: allColor.secondary,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    columnWidths: const {1: FractionColumnWidth(0.7)},
                    children: [
                      tableRowContent(
                        title: 'Pengemudi',
                        valueContent: 'Bambang Wijaya',
                      ),
                      tableRowContent(
                        title: 'Unit Kerja',
                        valueContent: 'BD - BD',
                      ),
                      tableRowContent(
                        title: 'Plat Nomor',
                        valueContent: 'B123BD',
                      ),
                      tableRowContent(
                        title: 'Clock In',
                        valueContent: '21 April 2021 07:32 WIB',
                      ),
                      tableRowContent(
                        title: 'Clock Out',
                        valueContent: '21 April 2021 16:32 WIB',
                      ),
                      tableRowContent(
                        title: 'Keterangan',
                        valueContent: '21 April 2021 16:32 WIB',
                      ),
                      tableRowContent(
                        title: 'No Telepon',
                        valueContent: '08122233444',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: Get.width * 0.3,
                    child: RectangleButton(
                      onTap: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return EditClockInOutDialog();
                          },
                        );
                      },
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            fontSize: Get.width * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.35,
                    child: RectangleButton(
                      onTap: () {},
                      color: allColor.green,
                      alignment: Alignment.center,
                      child: Text(
                        "Approve",
                        style: TextStyle(
                            fontSize: Get.width * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

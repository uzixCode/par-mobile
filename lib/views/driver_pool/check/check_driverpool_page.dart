import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/driver/clockinout/clockinout.dart';
import 'package:par_mobile/views/driver/dailycheckup/dailycheckup_driver_page.dart';
import 'package:par_mobile/views/driver/pretripcheck/pretripcheck.dart';
import 'package:par_mobile/views/driver/suratperintahkerjalembur/suratperintahkerjalembur.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/callcenterfloatingbutton.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';

class CheckDriverPoolPage extends StatelessWidget {
  const CheckDriverPoolPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CallCenterFloatingButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width * 0.90,
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: allColor.red,
                  borderRadius: BorderRadius.circular(Get.width * 0.02)),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Anda belum melaksanakan Pre Trip Check, Daily Check Up dan Clock In. Silakan melakukan rangkaian pemeriksaan. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            BaseCard(
              label: "RANGKUMAN PRE TRIP CHECK",
              trailing: InkWell(
                onTap: () => Get.to(() => PreTripCheck()),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text("No Data"),
                ),
              ),
            ),
            BaseCard(
              label: "HASIL DAILY CHECK UP",
              trailing: InkWell(
                onTap: () => Get.to(() => DailyCheckUP()),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text("No Data"),
                ),
              ),
            ),
            BaseCard(
              label: "DATA CLOCK IN CLOCK OUT",
              trailing: InkWell(
                onTap: () => Get.to(() => ClockInOut()),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text("No Data"),
                ),
              ),
            ),
            BaseCard(
              label: "DATA DRIVE IN DRIVE OUT",
              trailing: InkWell(
                onTap: () => Get.to(() => ClockInOut()),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text("No Data"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
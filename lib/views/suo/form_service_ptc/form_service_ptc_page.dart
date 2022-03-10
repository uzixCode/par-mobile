import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_ptc_detail/approval_ptc_detail_page.dart';
import 'package:par_mobile/views/suo/form_service_ptc/components/body.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

class FormServicePTCPage extends StatelessWidget {
  const FormServicePTCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "PENGAJUAN PERBAIKAN/SERVICE",
          style: TextStyle(
              color: Colors.white,
              fontSize: Get.width * 0.04,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(Get.width * 0.05),
          ),
        ),
        backgroundColor: allColor.primary,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: double.infinity,
          height: Get.height * 0.07,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: RectangleButton(
            onTap: () {},
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                "Submit",
                style:
                    TextStyle(color: Colors.white, fontSize: Get.width * 0.035),
              ),
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

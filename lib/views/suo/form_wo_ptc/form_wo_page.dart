import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/views/suo/form_wo_ptc/components/body.dart';

import '../../../constants/all_color.dart';

class FormWorkingOrderPage extends StatelessWidget {
  const FormWorkingOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title:  Text(
          "FORM WORKING ORDER",
          style: TextStyle(
              color: Colors.white, fontSize: Get.width * 0.04, fontWeight: FontWeight.bold),
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
      body: Body(),
    );
  }
}

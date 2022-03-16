import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/views/driver/main/main_driver_page.dart';
import 'package:par_mobile/views/driver_pool/main/main_driverpool_page.dart';
import 'package:par_mobile/views/manager/main/main_manager_page.dart';
import 'package:par_mobile/views/passanger/main/main_passanger_page.dart';
import 'package:par_mobile/views/suo/main/main_suo_page.dart';

class LoginPageController extends GetxController {
  //List Page Per Role For testing
  List<Map<String, Widget>> pages = [
    {"Dedicated Driver": MainDriverPage()},
    {"Pool Driver": MainDriverPoolPage()},
    {"SUO/Korlap": MainSUOPage()},
    {"Manager": MainManagerPage()},
    {"Passanger": MainPassangerPage()},
  ];
  @override
  void onInit() {
    print("Init Login Page Controller");
    super.onInit();
  }

//Navigate to page acording to index of page
  void toPage(BuildContext context, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => pages[index].values.first,
        ));
  }
}

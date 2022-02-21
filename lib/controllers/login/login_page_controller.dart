import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/views/beranda/beranda_page.dart';
import 'package:par_mobile/views/driver/main/main_driver_page.dart';
import 'package:par_mobile/views/suo/beranda/beranda_suo_page.dart';

class LoginPageController extends GetxController {
  //List Page Per Role For testing
  List<Widget> pages = [MainDriverPage(), BerandaSUOPage()];
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
          builder: (context) => pages[index],
        ));
  }
}

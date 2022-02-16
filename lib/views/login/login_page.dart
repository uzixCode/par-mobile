import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/controllers/login/login_page_controller.dart';
import 'package:par_mobile/widgets/background.dart';
import 'package:par_mobile/widgets/rounded_button.dart';
import 'package:par_mobile/widgets/rounded_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPageController loginPageController = Get.put(LoginPageController());
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: Get.width * 0.50,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30,
                ),
                RoundedTextField(
                  hint: "Username",
                  icon: Icon(Icons.person),
                  width: Get.width * 0.85,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedTextField(
                  hint: "Password",
                  icon: Icon(Icons.lock),
                  width: Get.width * 0.85,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: Get.width * 0.85,
                  child: RoundedButton(
                    color: Color(0xFF00497E),
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: Get.width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

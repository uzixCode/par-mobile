import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/login/login_page_controller.dart';
import 'package:par_mobile/widgets/background.dart';
import 'package:par_mobile/widgets/rounded_button.dart';

import 'package:par_mobile/widgets/roundedtextfield.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPageController loginPageController = Get.put(LoginPageController());
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: Get.height,
              width: Get.width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            width: Get.width * 0.50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Card(
                              margin: EdgeInsets.zero,
                              elevation: 5, //elevetion,

                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.025)),
                              child: RoundedTextField(
                                borderSide: BorderSide.none,
                                prefixIcon: Icon(Icons.person),
                                hintText: "Username",
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                              margin: EdgeInsets.zero,
                              elevation: 5, //elevetion,

                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.025)),
                              child: RoundedTextField(
                                borderSide: BorderSide.none,
                                prefixIcon: Icon(Icons.lock),
                                hintText: "Password",
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: Get.width * 0.85,
                            child: RoundedButton(
                              onTap: () {},
                              color: allColor.secondary,
                              alignment: Alignment.center,
                              child: Text(
                                "Masuk",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                      child: Center(
                          child: InkWell(
                    onTap: () => Get.dialog(UnconstrainedBox(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Get.width * 0.02)),
                      child: Center(
                        child: SizedBox(
                          width: Get.width * 0.80,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "RESET PASSWORD",
                                        style: TextStyle(
                                            // color: allColor.primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: Get.width * 0.04),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: InkWell(
                                        onTap: () => Get.back(),
                                        child: Icon(
                                          Icons.close,
                                          color: allColor.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Untuk penggantian kata sandi/password yang baru, silakan hubungi administrator di nomor 0812 3456 7890",
                                  textAlign: TextAlign.center,
                                ).paddingSymmetric(horizontal: 10),
                                Text("atau").paddingSymmetric(vertical: 10),
                                SizedBox(
                                  width: Get.width * 0.50,
                                  child: RoundedButton(
                                    onTap: () async {
                                      if (!await launch("tel:081234567890"))
                                        throw 'Could not launch ';
                                    },
                                    child: Text(
                                      "Click Disini untuk\nMenghubungi",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: allColor.secondary,
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.50,
                                  child: RoundedButton(
                                    onTap: () async {
                                      if (!await launch(
                                          "https:wa.me/6285156895918"))
                                        throw 'Could not launch ';
                                    },
                                    child: Text(
                                      "Click Disini untuk\nObrolan WhatsApp",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: allColor.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))),
                    child: Text(
                      "Lupa Password ?",
                      style: TextStyle(color: Colors.white),
                    ),
                  )))
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: 
        //TO-DO Comment for testing release
        // !kDebugMode
        //     ? null
        //     : 
            Container(
                color: Colors.white,
                height: kBottomNavigationBarHeight,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: loginPageController.pages.length,
                    itemBuilder: (context, index) => RoundedButton(
                          onTap: () =>
                              loginPageController.toPage(context, index),
                          child:
                              Text(loginPageController.pages[index].toString()),
                        )),
              ),
      ),
    );
  }
}

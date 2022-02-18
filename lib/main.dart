import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/theme.dart';
import 'package:par_mobile/views/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Par Mobile',
      theme: themeData(context),
      home: LoginPage(),
    );
  }
}

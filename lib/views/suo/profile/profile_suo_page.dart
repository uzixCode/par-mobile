import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/main/main_suo_page_controller.dart';
import 'package:par_mobile/views/suo/profile/components/body.dart';

class ProfileSUOPage extends StatelessWidget {
  ProfileSUOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}

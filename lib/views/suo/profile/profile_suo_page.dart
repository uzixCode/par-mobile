import 'package:flutter/material.dart';
import 'package:par_mobile/views/suo/profile/components/body.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/callcenterfloatingbutton.dart';

class ProfileSUOPage extends StatelessWidget {
  ProfileSUOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CallCenterFloatingButton(
        onPressed: () async {
          final Uri launchUri = Uri(
            scheme: 'tel',
            path: "081220559855",
          );
          await launch(launchUri.toString());
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/driver/beranda/underlinetexttabbarcontroller.dart';
import 'package:par_mobile/views/driver/riwayat/component/underlinetexttabbar.dart';
import 'package:par_mobile/widgets/underlinetextbutton.dart';

class RiwayatDriverPage extends StatelessWidget {
  RiwayatDriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(width: Get.width * 0.90, child: UnderlineTextTabbar()),
    ));
  }
}

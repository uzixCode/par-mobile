import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/profile/components/avatar_name_section.dart';
import 'package:par_mobile/widgets/callcenterfloatingbutton.dart';

class ProfileDriverPage extends StatelessWidget {
  const ProfileDriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double avatarSize = Get.width * 0.25;
    return Scaffold(
      floatingActionButton: CallCenterFloatingButton(),
      body: Center(
        child: SizedBox(
          width: Get.width * 0.90,
          child: Column(
            children: [
              SizedBox(
                height: avatarSize * 0.60,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    //height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Get.width * 0.05)),
                      color: allColor.primary,
                      child: Column(
                        children: [
                          SizedBox(
                            height: avatarSize * 0.50,
                          ),
                          Text(
                            "Ari Apriawan Jordi",
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.06),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Flutter Programmer",
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.035),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: avatarSize / -2,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Container(
                          height: avatarSize,
                          width: avatarSize,
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: allColor.red,
                          ),
                          child: Icon(
                            Icons.edit_rounded,
                            size: avatarSize * 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

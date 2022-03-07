import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/profile/components/avatar_name_section.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/callcenterfloatingbutton.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/tabbar_item.dart';

class ProfileDriverPage extends StatelessWidget {
  ProfileDriverPage({Key? key}) : super(key: key);
  int index = 0;

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
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/Profile.png"))),
                          child: Container(
                            decoration: BoxDecoration(
                                color: allColor.primary,
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.edit_rounded,
                                color: Colors.white,
                                size: avatarSize * 0.20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: TabBar(
                            labelColor: allColor.primary,
                            unselectedLabelColor: Colors.black,
                            indicatorColor: allColor.primary,
                            tabs: [
                              Tab(
                                child: Text(
                                  "GENERAL",
                                  //style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "KORLAP",
                                  // style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ]),
                        body: TabBarView(children: [
                          BaseCard(
                            label: "Profil Saya",
                            trailing: CostumFlatButton(
                                color: allColor.green,
                                child: Text(
                                  "Ubah Profil",
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: Get.width * 0.04,
                                  ),
                                )),
                          ),
                          Column(
                            children: [
                              BaseCard(
                                label: "INFO KORLAP",
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Uzix Code",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.width * 0.045,
                                              )).paddingOnly(bottom: 5),
                                          Text("codeuzix@gmail.com",
                                              style: TextStyle(
                                                fontSize: Get.width * 0.04,
                                              )).paddingOnly(bottom: 5),
                                          Text("+62 851 568 95918",
                                              style: TextStyle(
                                                fontSize: Get.width * 0.04,
                                              )).paddingOnly(bottom: 5),
                                        ],
                                      ),
                                      Image.asset("assets/images/phone.png",
                                              fit: BoxFit.cover,
                                              width: Get.width * 0.12)
                                          .paddingOnly(right: 9),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

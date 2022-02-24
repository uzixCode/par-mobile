import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class AvatarNameSection extends StatelessWidget {
  const AvatarNameSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height * 0.19,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 37,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: allColor.primary,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width * 0.30,
                height: Get.width * 0.20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: Get.width * 0.20,
                      height: Get.width * 0.20,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("assets/images/background.png")),
                          color: allColor.green,
                          shape: BoxShape.circle),
                    ),
                    Positioned(
                      top: 0,
                      right: 10,
                      child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(3)),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 18,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Bambang Wijaya",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "MOR III - Kramat Jaya",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

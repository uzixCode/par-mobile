import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/all_color.dart';

class UserFeedbackItemSection extends StatelessWidget {
  final Function() onTap;
  final String userName;
  final String createDate;
  final String descriptionFeedback;
  final String categoryFeedback;

  const UserFeedbackItemSection({Key? key, required this.userName, required this.createDate, required this.descriptionFeedback, required this.categoryFeedback, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(fontSize: Get.width * 0.035),
                    ),
                    Text(
                      createDate,
                      style: TextStyle(fontSize: Get.width * 0.035),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      color: allColor.primary,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Keluhan Driver",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.035)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        descriptionFeedback,
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white, fontSize: Get.width * 0.03),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Kategori: ',
                          style: TextStyle(
                              color: Colors.white, fontSize: Get.width * 0.03),
                          children: <TextSpan>[
                            TextSpan(
                                text: categoryFeedback,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: Get.width * 0.03)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

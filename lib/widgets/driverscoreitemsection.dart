import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../constants/all_color.dart';

class DriverScoreItemSection extends StatelessWidget {
  final Function() onTap;
  final String driverName;
  final String modelCar;
  final String platNomor;
  final double rating;
  const DriverScoreItemSection({Key? key, required this.onTap, required this.driverName, required this.modelCar, required this.platNomor, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 15),
            child: Row(
              children: [
                Container(
                  width: Get.width * 0.20,
                  height: Get.width * 0.20,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/background.png")),
                      color: allColor.green,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            driverName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.04),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "$modelCar - $platNomor",
                            style: TextStyle(fontSize: Get.width * 0.03),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          RatingBar.builder(
                            initialRating: rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemSize: 25,
                            ignoreGestures: true,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                            fontSize: Get.width * 0.07,
                            fontWeight: FontWeight.bold),
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
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

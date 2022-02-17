import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';

class BaseCard extends StatelessWidget {
  BaseCard({Key? key, required this.label, this.child, this.trailing})
      : super(key: key);
  final String label;
  final Widget? child;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Center(
        child: SizedBox(
          width: Get.width * 0.85,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Get.width * 0.025)),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  color: allColor.secondary,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          label,
                          style: const TextStyle(color: Colors.white),
                        ),
                        trailing ?? Container()
                      ],
                    ),
                  ),
                ),
                child ??
                    Container(
                      height: 100,
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

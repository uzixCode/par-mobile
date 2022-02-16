import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField({Key? key, this.hint, this.icon, this.width})
      : super(key: key);
  String? hint;
  Widget? icon;
  double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: icon,
          ),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          hintText: hint ?? "",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(Get.width),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(Get.width),
          ),
        ),
      ),
    );
  }
}

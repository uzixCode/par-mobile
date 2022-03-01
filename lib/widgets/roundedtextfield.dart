import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.onTap,
      this.readOnly,
      this.suffixIcon,
      this.padding})
      : super(key: key);
  TextEditingController? controller;
  void Function()? onTap;
  String? hintText;
  Widget? suffixIcon;
  bool? readOnly;
  EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly ?? false,
      onTap: onTap,
      decoration: InputDecoration(
          suffixIconConstraints:
              const BoxConstraints(minWidth: 23, maxHeight: 20),
          hintText: hintText,
          suffixIcon: suffixIcon,
          isDense: padding != null ? true : false,
          contentPadding: padding),
    );
  }
}

extension RoundingTextField on TextField {}

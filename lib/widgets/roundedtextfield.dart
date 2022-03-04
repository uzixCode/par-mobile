import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.onTap,
      this.readOnly,
      this.suffixIcon,
      this.padding,
      this.keyboardType,
      this.borderRadius,
      this.prefixIcon})
      : super(key: key);
  TextEditingController? controller;
  void Function()? onTap;
  String? hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool? readOnly;
  EdgeInsetsGeometry? padding;
  TextInputType? keyboardType;
  double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly ?? false,
      onTap: onTap,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 4.0)),
          suffixIconConstraints:
              const BoxConstraints(minWidth: 23, maxHeight: 20),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          isDense: padding != null ? true : false,
          contentPadding: padding),
    );
  }
}

extension RoundingTextField on TextField {}

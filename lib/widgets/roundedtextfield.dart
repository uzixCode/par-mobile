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
      this.prefixIcon,
      this.maxLines = 1,
      this.borderSide = const BorderSide()})
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
  int? maxLines;
  BorderSide borderSide;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly ?? false,
      onTap: onTap,
      maxLines: maxLines,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: borderSide,
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

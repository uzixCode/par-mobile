import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class UnderlineTextButton extends StatelessWidget {
  UnderlineTextButton(
      {Key? key,
      this.isSelected = false,
      required this.label,
      this.selectedColor,
      this.selectedTextColor,
      this.selectedUnderlineColor,
      this.unSelectedColor,
      this.unSelectedTextColor,
      this.unSelectedUnderlineColor,
      this.underlineThickness,
      this.onTap})
      : super(key: key);
  String label;
  Color? selectedTextColor;
  Color? selectedUnderlineColor;
  Color? selectedColor;
  Color? unSelectedTextColor;
  Color? unSelectedUnderlineColor;
  Color? unSelectedColor;
  bool isSelected;
  double? underlineThickness;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: underlineThickness ?? 3,
              color: isSelected
                  ? selectedUnderlineColor ?? selectedColor ?? Color(0xFF00497E)
                  : unSelectedUnderlineColor ??
                      unSelectedColor ??
                      Colors.transparent,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected
                    ? selectedTextColor ?? selectedColor ?? Color(0xFF00497E)
                    : unSelectedTextColor ??
                        unSelectedColor ??
                        Color(0xFF6B6B6B)),
          ),
        ),
      ),
    );
  }
}

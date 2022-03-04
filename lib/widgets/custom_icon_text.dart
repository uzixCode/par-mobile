import 'package:flutter/material.dart';

class CustomIconWithText extends StatelessWidget {
  final EdgeInsets padding;
  final Color colorBackground;
  final BorderRadius borderRadius;
  final Widget iconLabel;
  final Widget widgetContent;
  const CustomIconWithText(
      {Key? key,
      required this.colorBackground,
      required this.borderRadius,
      required this.iconLabel,
      required this.widgetContent,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: borderRadius,
      ),
      child: Row(
        children: [
          iconLabel,
          const SizedBox(
            width: 5,
          ),
          widgetContent
        ],
      ),
    );
  }
}

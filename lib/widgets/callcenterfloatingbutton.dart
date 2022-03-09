import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class CallCenterFloatingButton extends StatelessWidget {
  final Function()? onPressed;
  const CallCenterFloatingButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: allColor.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/cs.png"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class CallCenterFloatingButton extends StatelessWidget {
  const CallCenterFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: allColor.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/cs.png"),
      ),
    );
  }
}

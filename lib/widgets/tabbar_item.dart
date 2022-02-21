import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class TabBarItem extends StatelessWidget {
  final String title;
  const TabBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: allColor.primary, borderRadius: BorderRadius.circular(3)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

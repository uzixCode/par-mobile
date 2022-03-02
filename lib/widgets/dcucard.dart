import 'package:flutter/material.dart';

class DcuCard extends StatelessWidget {
  DcuCard({Key? key, this.content, required this.color}) : super(key: key);
  String? content;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          content ?? "           ",
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}

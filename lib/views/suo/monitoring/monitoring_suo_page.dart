import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/monitoring/components/body.dart';

class MonitoringSUOPage extends StatelessWidget {
  const MonitoringSUOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: allColor.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/cs.png"),
          ),
        ),
        body: Body());
  }
}

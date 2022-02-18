import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

import 'components/body.dart';

class BerandaSUOPage extends StatelessWidget {
  const BerandaSUOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: allColor.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/cs.png"),
          ),
        ),
        body: const Body());
  }
}

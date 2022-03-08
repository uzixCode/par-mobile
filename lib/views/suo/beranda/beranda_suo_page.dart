import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

import '../../../widgets/callcenterfloatingbutton.dart';
import 'components/body.dart';

class BerandaSUOPage extends StatelessWidget {
  const BerandaSUOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        floatingActionButton: CallCenterFloatingButton(), body: Body());
  }
}

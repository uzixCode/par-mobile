import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../util/call_center.dart';
import '../../../widgets/callcenterfloatingbutton.dart';
import 'components/body.dart';

class BerandaSUOPage extends StatelessWidget {
  const BerandaSUOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CallCenterFloatingButton(
          onPressed: () async {
            CallCenter().launchDial(uriPhone: "081220559855");
          },
        ),
        body: Body());
  }
}

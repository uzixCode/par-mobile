import 'package:flutter/material.dart';
import 'package:par_mobile/views/manager/beranda/components/body.dart';

import '../../../util/call_center.dart';
import '../../../widgets/callcenterfloatingbutton.dart';

class BerandaManagerPage extends StatelessWidget {
  const BerandaManagerPage({Key? key}) : super(key: key);

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

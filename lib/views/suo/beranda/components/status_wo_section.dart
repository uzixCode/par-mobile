import 'package:flutter/material.dart';
import 'package:par_mobile/widgets/basecard.dart';

class StatusWOSection extends StatelessWidget {
  const StatusWOSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "STATUS WORKING ORDER",
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    );
  }
}

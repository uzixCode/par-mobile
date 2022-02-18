import 'package:flutter/material.dart';
import 'package:par_mobile/widgets/basecard.dart';

class PTCSummarySection extends StatelessWidget {
  const PTCSummarySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "Rangkuman PTC Bermasalah",
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    );
  }
}

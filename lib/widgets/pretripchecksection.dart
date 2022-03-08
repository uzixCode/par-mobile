import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/checkdetailrow.dart';

class PreTripCheckSection extends StatelessWidget {
  PreTripCheckSection(
      {Key? key, this.dataRowList = const [], required this.sectionLabel})
      : super(key: key);
  List<Widget> dataRowList;
  String sectionLabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              sectionLabel,
              style: TextStyle(
                  color: allColor.secondary, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: dataRowList,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';

class RangkumanTile extends StatelessWidget {
  const RangkumanTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Elektrikal",
          style:
              TextStyle(color: allColor.secondary, fontWeight: FontWeight.bold),
        ).paddingOnly(left: 16),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: LayoutBuilder(
            builder: (context, constraint) => SizedBox(
              width: constraint.maxHeight,
              child: CostumFlatButton(
                  padding: EdgeInsets.all(5),
                  color: allColor.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Get.width * 0.05),
                      ),
                      Text(
                        "not ok",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ),
          title: Text("Keterangan"),
          subtitle: Text(
              "Terdapat masalah pada bagian A, tidak memungkinkan untuk beroperasi. "),
        )
      ],
    ).paddingOnly(bottom: 20);
  }
}

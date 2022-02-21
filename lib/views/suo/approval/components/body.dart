import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/constants/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonSectionApproval("PTC"),
                buttonSectionApproval("DCU"),
                buttonSectionApproval("CLOCK IN/OUT"),
                buttonSectionApproval("DOC"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buttonSectionApproval(String title) {
    return Container(
      decoration: BoxDecoration(color: allColor.primary, borderRadius: BorderRadius.circular(3)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

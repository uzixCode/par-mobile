import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/beranda/beranda_suo_page_controller.dart';
import 'package:par_mobile/views/beranda/suo/components/header_section.dart';
import 'package:par_mobile/widgets/basecard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BerandaSUOPageController controller = Get.put(BerandaSUOPageController());

    return SafeArea(
      child: Column(
        children: [
          const HeaderSection(),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return BaseCard(
                label: "card number : " + index.toString(),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/userfeedbackitemsection.dart';

class UserFeedbackSection extends StatelessWidget {
  const UserFeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "KELUHAN/SARAN PELANGGAN",
      trailing: Container(),
      leading: Container(),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  isDense: true,
                  hintText: "Cari Driver",
                  hintStyle: TextStyle(fontSize: Get.width * 0.03),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return UserFeedbackItemSection(
                          userName: "Dany Bramantyo",
                          createDate: "04 Mar 2022",
                          descriptionFeedback: "Driver kurang disiplin",
                          categoryFeedback: "Kedisiplinan",
                          onTap: () {});
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

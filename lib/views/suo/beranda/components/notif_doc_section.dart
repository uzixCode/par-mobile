import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/suo/approval_update_document/approval_update_document_page.dart';
import 'package:par_mobile/widgets/basecard.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

class NotifDocSection extends StatelessWidget {
  const NotifDocSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "RANGKUMAN NOTIFIKASI DOC",
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Document KEUR Driver",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: Get.width * 0.035)),
                    SizedBox(
                      width: Get.width * 0.27,
                      child: RectangleButton(
                        onTap: () {
                          Get.to(ApprovalUpdateDocumentPage());
                        },
                        color: allColor.primary,
                        alignment: Alignment.center,
                        child: Text(
                          "Lihat",
                          style: TextStyle(
                              fontSize: Get.width * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

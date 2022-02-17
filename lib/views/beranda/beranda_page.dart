import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/beranda/beranda_page_controller.dart';
import 'package:par_mobile/widgets/basecard.dart';

class BerandaPage extends StatelessWidget {
  BerandaPage({Key? key}) : super(key: key);
  BerandaPageController berandaPageController =
      Get.put(BerandaPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: allColor.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/cs.png"),
          ),
        ),
        body: Column(
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Get.width * 0.05),
                  bottomRight: Radius.circular(Get.width * 0.05),
                ),
              ),
              color: allColor.primary,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width * 0.17,
                          height: Get.width * 0.17,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/background.png")),
                              color: allColor.green,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Selamat Pagi,\n",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Uzix Code",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.04),
                            ),
                            Text(
                              "\nDCU      : No Data",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Clock In : No Data",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      berandaPageController.dateFormat
                          .format(berandaPageController.dateTimeNow),
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
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
        ));
  }
}

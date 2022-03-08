import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';
import 'package:par_mobile/widgets/roundedtextfield.dart';

class KonfirmasiPTCTile extends StatelessWidget {
  KonfirmasiPTCTile({Key? key, required this.label}) : super(key: key);
  String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: TextStyle(
                color: allColor.secondary, fontWeight: FontWeight.bold),
          ),
        ).paddingOnly(bottom: 15),
        AspectRatio(
          aspectRatio: 2 / 0.35,
          child: LayoutBuilder(
            builder: (context, tile) => Container(
              // color: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                      child: LayoutBuilder(
                    builder: (context, constraint) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CostumFlatButton(
                          width: constraint.maxWidth,
                          borderRadius: 0,
                          color: allColor.red,
                          child: Center(
                            child: Text(
                              "1 not ok",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: constraint.maxWidth * 0.15),
                            ),
                          ),
                        ),
                        CostumFlatButton(
                          width: constraint.maxWidth,
                          borderRadius: 0,
                          color: allColor.green,
                          child: Center(
                            child: Text(
                              "8 ok",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: constraint.maxWidth * 0.15),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      flex: 2,
                      child: LayoutBuilder(
                        builder: (context, constraint) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                              height: constraint.maxHeight,
                              child: RoundedTextField(
                                padding: EdgeInsets.all(5),
                                maxLines: 1000,
                                hintText: "Keterangan Tambahan",
                                keyboardType: TextInputType.multiline,
                                style: TextStyle(fontSize: Get.width * 0.035),
                              )),
                        ),
                      )),
                  CostumFlatButton(
                      width: tile.maxWidth * 0.20,
                      padding: EdgeInsets.all(2),
                      color: allColor.bright_blue,
                      child: Column(
                        children: [
                          Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                            size: tile.maxHeight * 0.45,
                          ),
                          Text(
                            "Upload Kerusakan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: tile.maxHeight * 0.21),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

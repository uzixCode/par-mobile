import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/models/widgets/monthmodel.dart';

class MonthPickerController extends GetxController {
  bool isLoading = true;
  BoxConstraints constraints;
  MonthPickerController({required this.constraints});
  final scrollController = FixedExtentScrollController();
  List<Widget> cards = [];
  String monthJson = '[' +
      '{"bulan":"Januari","index":1},' +
      '{"bulan":"Febuari","index":2},' +
      '{"bulan":"Maret","index":3},' +
      '{"bulan":"April","index":4},' +
      '{"bulan":"Mei","index":5},' +
      '{"bulan":"Juni","index":6},' +
      '{"bulan":"Juli","index":7},' +
      '{"bulan":"Agustus","index":8},' +
      '{"bulan":"September","index":9},' +
      '{"bulan":"Oktober","index":10},' +
      '{"bulan":"November","index":11},' +
      '{"bulan":"Desember","index":12}' +
      ']';
  List<Monthmodel> data = [];
  @override
  void onInit() {
    data = monthmodelFromJson(monthJson);

    super.onInit();
  }

  @override
  void onReady() {
    initCard();
    super.onReady();
  }

  void initCard() async {
    cards = [];
    for (var item in data) {
      cards.add(
        SizedBox(
          height: constraints.maxHeight * 0.30,
          width: constraints.maxWidth * 0.80,
          child: Card(
            elevation: 10,
            //color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      item.bulan,
                      style: TextStyle(
                          color: allColor.light_blue,
                          fontSize: constraints.maxWidth * 0.10),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      (item.index).toString(),
                      style: TextStyle(
                          color: allColor.light_blue,
                          fontSize: constraints.maxWidth * 0.08),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    await Future.delayed(Duration(milliseconds: 100));
    isLoading = false;
    update();
  }

  int index = 0;
  void changeIndex(int indexi) {
    index = indexi;
    update();
  }
}

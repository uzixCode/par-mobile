import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/models/widgets/monthmodel.dart';

class YearPickerController extends GetxController {
  bool isLoading = true;
  BoxConstraints constraints;
  YearPickerController({required this.constraints});
  final scrollController = FixedExtentScrollController();
  List<Widget> cards = [];
  List<int> years = [];
  @override
  void onInit() {
    initYears();
    super.onInit();
  }

  void initYears() {
    years = [];
    for (int year = DateTime.now().year; year >= 2010; year--) {
      years.add(year);
    }
  }

  @override
  void onReady() {
    initCard();
    super.onReady();
  }

  void initCard() async {
    cards = [];
    for (int item in years) {
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
                      item.toString(),
                      style: TextStyle(
                          color: allColor.light_blue,
                          fontSize: constraints.maxWidth * 0.10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    //await Future.delayed(Duration(milliseconds: 100));
    isLoading = false;
    update();
  }

  int index = 0;
  void changeIndex(int indexi) {
    index = indexi;
    update();
  }
}

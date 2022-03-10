import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MonitoringDCUController extends GetxController {
  var date = DateTime.now().obs;
  Rx<TextEditingController> txtDate = TextEditingController().obs;
  final dateFormat = DateFormat("dd MMMM yyyy");
  var isDetailMenuDCU = false.obs;

  setDate(DateTime? data) {
    if (data != null) {
      date.value = data;
      txtDate.value.text = dateFormat.format(date.value);
    }
    update();
  }
}

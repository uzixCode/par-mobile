import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ApprovalCicoDetailController extends GetxController {
  Rx<TextEditingController> txtClockIn = TextEditingController().obs;
  Rx<TextEditingController> txtClockOut = TextEditingController().obs;

  Rx<DateTime> dateTimeClockIn = DateTime.now().obs;
  Rx<DateTime> dateTimeClockOut = DateTime.now().obs;
  final dateFormat = DateFormat("dd MMMM yyyy HH:mm");

  setDateClockIn(DateTime? data) {
    if (data != null) {
      dateTimeClockIn.value = data;
    }
    update();
  }

  setTimeClockIn(TimeOfDay? data) {
    if (data != null) {
      dateTimeClockIn.value = DateTime(
          dateTimeClockIn.value.year,
          dateTimeClockIn.value.month,
          dateTimeClockIn.value.day,
          data.hour,
          data.minute);

      txtClockIn.value.text = dateFormat.format(dateTimeClockIn.value);
    }
    update();
  }

  setDateClockOut(DateTime? data) {
    if (data != null) {
      dateTimeClockOut.value = data;
    }
    update();
  }

  setTimeClockOut(TimeOfDay? data) {
    if (data != null) {
      dateTimeClockOut.value = DateTime(
          dateTimeClockOut.value.year,
          dateTimeClockOut.value.month,
          dateTimeClockOut.value.day,
          data.hour,
          data.minute);
      txtClockOut.value.text = dateFormat.format(dateTimeClockOut.value);
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

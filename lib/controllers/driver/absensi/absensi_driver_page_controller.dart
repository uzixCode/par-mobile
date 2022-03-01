import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AbsensiDriverPageController extends GetxController {
  final format = DateFormat("dd/MM/yyyy");
  DateTime? awalDate;
  DateTime? akhirDate;
  void pickAwalDate(BuildContext context) async {
    awalDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        lastDate: DateTime.now());
    update();
  }

  void pickAkhirDate(BuildContext context) async {
    akhirDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        lastDate: DateTime.now());
    update();
  }
}

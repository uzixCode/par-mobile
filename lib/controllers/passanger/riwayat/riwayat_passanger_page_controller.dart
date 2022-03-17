import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RiwayatPassangerPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  @override
  void onInit() {
    print("Init Beranda Driver Page Controller");
    super.onInit();
  }
}

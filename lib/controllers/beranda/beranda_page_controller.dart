import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BerandaPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  @override
  void onInit() {
    print("Init Login Page Controller");
    super.onInit();
  }
}

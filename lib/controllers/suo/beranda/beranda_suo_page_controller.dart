import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';

class BerandaSUOPageController extends GetxController {
  final dateTimeNow = DateTime.now();
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  @override
  void onInit() {
    print("Init Login Page Controller");
    super.onInit();
  }
}

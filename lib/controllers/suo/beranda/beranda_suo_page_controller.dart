import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';

class BerandaSUOPageController extends GetxController {
  final dateFormat = DateFormat("dd MMMM yyyy\nHH:mm");
  var dateTimeNow = DateTime.now();

  @override
  void onInit() {
    print("Init Login Page Controller");

    super.onInit();
  }
}

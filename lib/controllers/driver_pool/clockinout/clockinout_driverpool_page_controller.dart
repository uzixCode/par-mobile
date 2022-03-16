import 'package:get/get.dart';

class ClockInOutDriverPoolPageController extends GetxController {
  bool isConfirmed = false;
  void changeIsConfirmed() {
    isConfirmed = !isConfirmed;
    update();
  }
}

import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class FormItemRequestController extends GetxController {
  var totalItem = 0.obs;

  sumItem() => totalItem++;
  subtractItem() {
    if (totalItem > 0) totalItem--;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

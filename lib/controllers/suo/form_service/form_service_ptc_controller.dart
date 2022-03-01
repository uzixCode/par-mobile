import 'package:get/get.dart';

class FormServicePTCController extends GetxController {
  var serviceTypeId = 1.obs;
  var serviceBookId = 1.obs;

  @override
  void onInit() {
    print("Init Main Driver Page Controller");
    super.onInit();
  }

  void setRadioServiceType(var data) {
    serviceTypeId.value = data;
    update();
  }

  setRadioServiceBook(var data) {
    serviceBookId.value = data;
    update();
  }
}

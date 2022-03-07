import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ApprovalUpdateDocPageController extends GetxController {
  var fileDocument = File("").obs;

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      if (kDebugMode) {
        print(file.path);
      }
      fileDocument.value = file;
    } else {}
    update();
  }

  deleteFile() async {
    if (fileDocument.value.path.isNotEmpty) {
      fileDocument.value = File("");
    }
    if (kDebugMode) {
      print(fileDocument.value.path);
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

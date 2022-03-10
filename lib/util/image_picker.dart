import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerService {
  XFile? imageFile;

  ImagePickerService({this.imageFile});

  Future gallery(BuildContext context) async {
    final picker = ImagePicker();
    PermissionStatus status = await Permission.photos.status;

    if (status.isGranted) {
      var picture = await picker.pickImage(source: ImageSource.gallery);
      imageFile = XFile(picture!.path);
      if (imageFile != null) {
        Navigator.pop(context, imageFile);
      }
    } else if (status.isDenied) {
      await Permission.photos.request();
      if (kDebugMode) {
        print("Android Photos Permission Status: " + status.toString());
      }
    } else {
      openAppSettings();
    }
  }

  Future camera(BuildContext context) async {
    final picker = ImagePicker();
    PermissionStatus status = await Permission.camera.status;

    if (status.isGranted) {
      var picture = await picker.pickImage(source: ImageSource.camera);
      imageFile = XFile(picture!.path);
      Navigator.pop(context, imageFile);

      if (imageFile != null) {
        Navigator.pop(context, imageFile);
      }
    } else if (status.isDenied) {
      await Permission.camera.request();
      if (kDebugMode) {
        print("Android Photos Permission Status: " + status.toString());
      }
    } else {
      openAppSettings();
    }
  }

  Future dialogUploadPhoto(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "UPLOAD PHOTO",
              style: TextStyle(
                fontSize: Get.width * 0.04,
              ),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    gallery(context);
                  },
                  child: const Text(
                    "Choose From Gallery",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    camera(context);
                  },
                  child: const Text(
                    "Take  Photo",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

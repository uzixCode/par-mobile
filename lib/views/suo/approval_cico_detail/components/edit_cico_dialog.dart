import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/controllers/suo/approval/approval_cico_detail_controller.dart';
import 'package:par_mobile/widgets/rectangle_button.dart';

class EditClockInOutDialog extends StatelessWidget {
  const EditClockInOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApprovalCicoDetailController controller = ApprovalCicoDetailController();

    return AlertDialog(
      title: Text(
        'EDIT CLOCK IN CLOCK OUT',
        textAlign: TextAlign.center,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: Get.width * 0.04),
      ),
      content: Obx(
        () => SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Masukkan jam clock in clock out driver yang sebenernya",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: Get.width * 0.035, color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Text("Bambang Wijaya",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Get.width * 0.04)),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Clock In",
                style: TextStyle(
                    color: allColor.primary,
                    fontSize: Get.width * 0.035,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: controller.txtClockIn.value,
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050))
                      .then((value) {
                    controller.setDateClockIn(value);
                    showTimePicker(
                            context: context, initialTime: TimeOfDay.now())
                        .then((timeValue) =>
                            controller.setTimeClockIn(timeValue));
                  });
                },
                decoration: const InputDecoration(isDense: true),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Clock Out",
                style: TextStyle(
                    color: allColor.primary,
                    fontSize: Get.width * 0.035,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: controller.txtClockOut.value,
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050))
                      .then((value) {
                    controller.setDateClockOut(value);
                    showTimePicker(
                            context: context, initialTime: TimeOfDay.now())
                        .then((timeValue) =>
                            controller.setTimeClockOut(timeValue));
                  });
                },
                decoration: const InputDecoration(isDense: true),
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        Center(
          child: SizedBox(
            width: Get.width * 0.2,
            child: RectangleButton(
                onTap: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
                child: Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Get.width * 0.04,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ],
    );
  }
}

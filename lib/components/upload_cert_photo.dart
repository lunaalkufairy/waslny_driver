import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/add_information_Screen_controller.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';

class UploadCertPhoto extends StatelessWidget {
  const UploadCertPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();
    AddInformationScreenController addInformationScreenController =
        Get.put(AddInformationScreenController(), permanent: true);

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.certImagePath);
      },
      child: Obx(() {
        addInformationScreenController.certImage =
            File(controller.certImagePath.value);
        print(addInformationScreenController.certImage);
        return Container(
          height: 200,
          width: 390,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: blue.withOpacity(0.15),
            border: Border.all(color: blue, width: 2),
          ),
          child: controller.certImagePath.isNotEmpty
              ? Image.file(File(controller.certImagePath.value))
              : Center(
                  child:
                      Text("اختر صورة الشهادة", style: TextStyle(color: white)),
                ),
        );
      }),
    );
  }
}

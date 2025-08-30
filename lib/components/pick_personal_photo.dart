import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/controllers/add_information_Screen_controller.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';
import 'package:waslny_driver/constants.dart';

class PickPersonalPhoto extends StatelessWidget {
  const PickPersonalPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();
    AddInformationScreenController addInformationScreenController =
        Get.put(AddInformationScreenController(), permanent: true);

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.profileImagePath);
      },
      child: Obx(() {
        addInformationScreenController.personalImage =
            File(controller.profileImagePath.value);
        print(addInformationScreenController.personalImage);
        return Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: blue, width: 3),
            color: blue.withOpacity(0.1),
          ),
          child: controller.profileImagePath.isNotEmpty
              ? ClipOval(
                  child: Image.file(
                    File(controller.profileImagePath.value),
                    fit: BoxFit.cover,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 60, color: white),
                    Text("الصورة الشخصية", style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

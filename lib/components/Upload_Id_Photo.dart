import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';

class UploadIdPhoto extends StatelessWidget {
  const UploadIdPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.idImagePath);
      },
      child: Obx(() {
        return Container(
          height: 180,
          width: 188,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green.withOpacity(0.15),
            border: Border.all(color: Colors.green, width: 2),
          ),
          child: controller.idImagePath.isNotEmpty
              ? Image.file(File(controller.idImagePath.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.credit_card, color: white),
                    Text("صورة الهوية", style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

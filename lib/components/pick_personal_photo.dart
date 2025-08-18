import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';

class PickPersonalPhoto extends StatelessWidget {
  final double avatarSize = 170;
  const PickPersonalPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());

    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: black1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 130,
                  child: CustomButton(
                      onTap: () {
                        controller.getImage(ImageSource.gallery);
                        Get.back();
                      },
                      text: 'المعرض'),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 60,
                  width: 130,
                  child: CustomButton(
                      onTap: () {
                        controller.getImage(ImageSource.camera);
                        Get.back();
                      },
                      text: 'الكاميرا'),
                ),
              ],
            ),
          ),
        );
      },
      child: Obx(
        () {
          return Container(
            height: avatarSize,
            width: avatarSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: blue.withOpacity(0.5),
              border: Border.all(color: blue, width: 4),
            ),
            child: controller.imagePath.isNotEmpty
                ? CircleAvatar(
                    radius: avatarSize / 2,
                    backgroundImage: FileImage(
                      File(
                        controller.imagePath.toString(),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo,
                          color: white,
                        ),
                        Text(
                          'اختر صورة',
                          style: TextStyle(color: white),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';

class UploadPhoto extends StatelessWidget {
  final RxString imagePath; // المتغير الخاص بالصورة
  final String photoName; // اسم الصورة (مثلاً: "صورة الهوية")
  final String? photoAsset; // أيقونة/صورة افتراضية

  const UploadPhoto({
    super.key,
    required this.imagePath,
    required this.photoName,
    this.photoAsset,
  });

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.find<ImagePickerController>();

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
              children: [
                Container(
                  height: 60,
                  width: 130,
                  child: CustomButton(
                    onTap: () {
                      controller.getImage(ImageSource.gallery, imagePath);
                      Get.back();
                    },
                    text: 'المعرض',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  height: 60,
                  width: 130,
                  child: CustomButton(
                    onTap: () {
                      controller.getImage(ImageSource.camera, imagePath);
                      Get.back();
                    },
                    text: 'الكاميرا',
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Obx(() {
        return Container(
          height: 180,
          width: 188,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: blue.withOpacity(0.15),
            border: Border.all(color: blue, width: 2),
          ),
          child: imagePath.isNotEmpty
              ? Image.file(File(imagePath.value))
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (photoAsset != null)
                        Image.asset(photoAsset!, width: 50, height: 50),
                      SizedBox(height: 10),
                      Text(
                        photoName,
                        style: TextStyle(color: white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
        );
      }),
    );
  }
}

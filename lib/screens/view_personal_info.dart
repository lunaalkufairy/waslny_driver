import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/custom_textField.dart';
import 'package:waslny_driver/components/page_top.dart';
import 'package:waslny_driver/components/pick_aphoto.dart';
import 'package:waslny_driver/components/pick_personal_photo.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';
import 'package:waslny_driver/screens/complete_personal_info2_screen.dart';

class ViewPersonalInfo extends StatelessWidget {
  const ViewPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ImagePickerController());
    return Scaffold(
      backgroundColor: black1,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              PageTop(pageName: 'الملف الشخصي', width: 35),
              SizedBox(
                height: 30,
              ),
              Text(
                "الصورة الشخصية",
                style:
                    TextStyle(color: white, fontSize: 14, fontFamily: 'cairo'),
              ),
              SizedBox(
                height: 20,
              ),
              UploadPhoto(
                imagePath: controller.certImagePath,
                photoName: "صورة الشهادة",
                photoAsset: "assets/icons/cert.png",
              ),
              CustomTextfield(
                textFieldName: "الاسم",
                hintText: 'الاسم',
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextfield(
                textFieldName: "الكنية",
                hintText: 'الكنية',
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextfield(
                textFieldName: "(اختياري) العنوان",
                hintText: 'العنوان',
              ),
              const SizedBox(
                height: 150,
              ),
              CustomButton(
                text: 'متابعة',
                onTap: () {
                  Get.to(CompletePersonalInfo2Screen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

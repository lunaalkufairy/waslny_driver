import 'package:flutter/material.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/custom_textField.dart';
import 'package:waslny_driver/components/pick_personal_photo.dart';
import 'package:waslny_driver/constants.dart';

class AddInformationScreen extends StatelessWidget {
  const AddInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "إكمال المعلومات الشخصية",
                  style: TextStyle(
                      color: white, fontSize: 26, fontFamily: 'cairo'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "الصورة الشخصية",
                  style: TextStyle(
                      color: white, fontSize: 14, fontFamily: 'cairo'),
                ),
                SizedBox(
                  height: 20,
                ),
                PickPersonalPhoto(),
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
                  text: 'تأكيد',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

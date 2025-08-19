import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/custom_textField.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/screens/complete_car_info2_screen.dart';

class CompleteCarInfo1Screen extends StatelessWidget {
  const CompleteCarInfo1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black1,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "إكمال المعلومات المركبة",
                  style: TextStyle(
                      color: white, fontSize: 26, fontFamily: 'cairo'),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  textFieldName: "اسم الشركة المصنعة",
                  hintText: 'Mercedes AMG',
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextfield(
                  textFieldName: "الموديل",
                  hintText: 'CLA300',
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextfield(
                  textFieldName: "عدد المقاعد",
                  hintText: '6',
                ),
                const SizedBox(
                  height: 350,
                ),
                CustomButton(
                  text: 'متابعة',
                  onTap: () {
                    Get.to(CompleteCarInfo2Screen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

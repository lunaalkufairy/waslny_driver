import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/select_gender.dart';
import 'package:waslny_driver/components/upload_cert_photo.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/screens/complete_car_info1_screen.dart';

class CompletePersonalInfo2Screen extends StatelessWidget {
  const CompletePersonalInfo2Screen({super.key});

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
                  "إكمال المعلومات الشخصية",
                  style: TextStyle(
                      color: white, fontSize: 26, fontFamily: 'cairo'),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment(0.9, 0),
                  child: Text(
                    'الجنس',
                    style: TextStyle(
                        color: white, fontSize: 14, fontFamily: 'cairo'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SelectGender(),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment(0.9, 0),
                  child: Text(
                    'صورة شهادة القيادة',
                    style: TextStyle(
                        color: white, fontSize: 14, fontFamily: 'cairo'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                UploadCertPhoto(),
                SizedBox(
                  height: 150,
                ),
                CustomButton(
                    onTap: () {
                      Get.to(CompleteCarInfo1Screen());
                    },
                    text: 'متابعة'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

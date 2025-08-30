import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/OTP_textField.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/login_screen_controller.dart';
import 'package:waslny_driver/controllers/otp_page_controller.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OtpPageController controller = Get.find();
    LoginScreenController loginScreenController = Get.find();

    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "الرجاء ادخال الرمز الذي تم إرساله ",
                style:
                    TextStyle(color: white, fontSize: 22, fontFamily: 'cairo'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "+${loginScreenController.phoneNumber.toString()}",
                      style: TextStyle(
                          color: blue, fontSize: 22, fontFamily: 'cairo'),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      ": للرقم",
                      style: TextStyle(
                          color: white, fontSize: 22, fontFamily: 'cairo'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              OtpTextfield(),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                onTap: () {
                  loginScreenController.showExtrnalDialog();
                },
                text: "ذهاب إلى تيليغرام",
                isEnabled: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}

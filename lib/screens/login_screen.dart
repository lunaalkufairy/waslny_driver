import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/phone_number_input.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/screens/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              SvgPicture.asset('assets/icons/Group 34.svg'),
              SizedBox(
                height: 70,
              ),
              Text(
                'تسجيل الدخول',
                style:
                    TextStyle(color: white, fontSize: 25, fontFamily: 'cairo'),
              ),
              SizedBox(
                height: 35,
              ),
              Align(
                alignment: Alignment(0.9, 0),
                child: Text(
                  'رقم الهاتف',
                  style: TextStyle(
                      color: white, fontSize: 14, fontFamily: 'cairo'),
                ),
              ),
              PhoneNumberInput(),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                  onTap: () {
                    Get.to(OtpScreen());
                  },
                  text: 'طلب رمز')
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/get_user_information_screen_controller.dart';
import 'package:waslny_driver/controllers/login_screen_controller.dart';
import 'package:waslny_driver/screens/complete_personal_info1_screen.dart';
import 'package:waslny_driver/screens/home_screen.dart';

class OtpPageController extends GetxController {
  GetUserInfoScreenController userInfoScreenController =
      Get.put(GetUserInfoScreenController(), permanent: true);
  LoginScreenController controller = Get.find();

  int? statusResponse;
  String? validator;
  String? accessToken;

  void resetValidator() {
    validator = null;
    update();
  }

  Future<void> otpCheck(String pin) async {
    Get.dialog(
      const Center(
          child: CircularProgressIndicator(
        color: blue,
      )),
      barrierDismissible: false,
    );

    var url = Uri.parse("$baseUrl/api/driver/otp/verify");

    var response = await http.post(
      url,
      headers: {"Accept": "application/json"},
      body: {
        "phone": controller.phoneNumber,
        "otp": pin,
      },
    );

    statusResponse = response.statusCode;

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = json.decode(response.body);
      validator = null;
      accessToken = data['data']['token'];
      print(accessToken);
      update();
      print('qqqqqqqqqqqqqqq');
      await userInfoScreenController.getUserInfo();
      if (Get.isDialogOpen ?? false) {
        Get.back();
      }
      print(userInfoScreenController.message);
      if (userInfoScreenController.message == 'driver profile is incomplete') {
        print('EEEEEEEEEEEEEEEEEEEEEEEEEEEE');

        Get.off(() => CompletePersonalInfo1Screen());
      } else if (userInfoScreenController.message ==
          'Rider account retrieved successfully') {
        print('QQQQQQQQQQQQQQQQQQQQQQQQ');
        Get.off(() => HomeScreen());
      }
    } else if (response.statusCode == 403) {
      print('DOOOOOOOOOOOOONEEEEEEEE');
      if (Get.isDialogOpen ?? false) {
        Get.back();
      }
      validator = "Pin is incorrect";
      update();
    }
  }
}

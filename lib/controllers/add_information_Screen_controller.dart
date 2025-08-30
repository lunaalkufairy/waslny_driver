import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/otp_page_controller.dart';
import 'package:waslny_driver/screens/complete_car_info1_screen.dart';
import 'package:waslny_driver/screens/home_screen.dart';

class AddInformationScreenController extends GetxController {
  OtpPageController controller = Get.find();
  String? firstName;
  String? secondName;
  String? serialnumber;
  String? gender;
  File? personalImage;
  File? certImage;

  void checkGender(int selectedIndex) {
    if (selectedIndex == 0) {
      gender = 'male';
      update();
    } else if (selectedIndex == 1) {
      gender = 'female';
      update();
    }
  }

  Future<void> checkValues() async {
    print(controller.accessToken);
    if (firstName == '' ||
        secondName == '' ||
        serialnumber == '' ||
        personalImage == null ||
        certImage == null) {
      Get.showSnackbar(GetSnackBar(
        animationDuration: Duration(seconds: 1),
        duration: Duration(seconds: 2),
        snackStyle: SnackStyle.GROUNDED,
        backgroundColor: red,
        snackPosition: SnackPosition.TOP,
        title: 'خطأ',
        message: 'يرجى تعبئة كل الحقول',
      ));
      print("Please fill all the fields");
    } else {
      print("All fields are filled");
      Get.dialog(Center(
        child: CircularProgressIndicator(
          color: blue,
        ),
      ));

      var url = Uri.parse("$baseUrl/api/driver/profile/completion");

      var request = http.MultipartRequest("POST", url);
      request.headers['Authorization'] = 'Bearer ${controller.accessToken}';
      request.headers['Content-Type'] = 'application/json';
      request.headers['Accept'] = 'application/json';
      request.fields['first_name'] = firstName!;
      request.fields['last_name'] = secondName!;
      request.fields['national_number'] = serialnumber!;
      request.fields['gender'] = gender!;
      request.fields['device_token'] = controller.accessToken.toString();

      request.files.add(await http.MultipartFile.fromPath(
        'profile_photo',
        personalImage!.path,
        filename: personalImage!.path,
      ));

      request.files.add(await http.MultipartFile.fromPath(
        'driver_license_photo',
        certImage!.path,
        filename: certImage!.path,
      ));

      // إرسال الريكويست
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (Get.isDialogOpen ?? false) {
        Get.back();
      }

      if (response.statusCode == 200) {
        print('Status code: ${response.body}');
        var data = json.decode(response.body);

        print("Status: ${data['status']}");
        print("Message: ${data['message']}");
        print("Requires OTP: ${data['data']['first_name']}");
        print("Requires OTP: ${data['data']['last_name']}");

        Get.to(CompleteCarInfo1Screen());
      } else {
        var data = json.decode(response.body);
        print("Error: ${response.statusCode}");
        print('${data['message']}');
      }
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/custom_textField.dart';
import 'package:waslny_driver/components/pick_personal_photo.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/add_information_Screen_controller.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';
import 'package:waslny_driver/screens/complete_personal_info2_screen.dart';

class CompletePersonalInfo1Screen extends StatelessWidget {
  const CompletePersonalInfo1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstnamecontroller = TextEditingController();
    TextEditingController secondnamecontroller = TextEditingController();
    TextEditingController serialnumberController = TextEditingController();
    ImagePickerController controller =
        Get.put(ImagePickerController(), permanent: true);
    AddInformationScreenController addInformationScreenController =
        Get.put(AddInformationScreenController(), permanent: true);
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
                  controller: firstnamecontroller,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextfield(
                  textFieldName: "الكنية",
                  hintText: 'الكنية',
                  controller: secondnamecontroller,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextfield(
                  textFieldName: "الرقم الوطني",
                  hintText: 'الرقم الوطني',
                  controller: serialnumberController,
                ),
                const SizedBox(
                  height: 150,
                ),
                CustomButton(
                  text: 'متابعة',
                  onTap: () {
                    addInformationScreenController.firstName =
                        firstnamecontroller.text;
                    addInformationScreenController.secondName =
                        secondnamecontroller.text;
                    addInformationScreenController.serialnumber =
                        serialnumberController.text;
                    print(addInformationScreenController.firstName);
                    print(addInformationScreenController.secondName);
                    print(addInformationScreenController.serialnumber);
                    print(addInformationScreenController.personalImage);
                    Get.to(CompletePersonalInfo2Screen());
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:waslny_driver/components/car_images.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/upload_car_photo.dart';
import 'package:waslny_driver/components/upload_cert_photo.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';
import 'package:waslny_driver/screens/home_screen.dart';

class CompleteCarInfo2Screen extends StatelessWidget {
  const CompleteCarInfo2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());
    return Scaffold(
      backgroundColor: black1,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          UploadCarFrontPhoto(),
                          SizedBox(
                            width: 10,
                          ),
                          UploadCarBackPhoto()
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          UploadCarRightPhoto(),
                          SizedBox(
                            width: 10,
                          ),
                          UploadCarLeftPhoto()
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Insidefirst(),
                          SizedBox(
                            width: 10,
                          ),
                          InsideSecond()
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                CustomButton(
                    onTap: () {
                      Get.to(HomeScreen());
                    },
                    text: 'تأكيد')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

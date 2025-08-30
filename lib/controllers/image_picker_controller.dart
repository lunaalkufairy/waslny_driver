import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/constants.dart';

class ImagePickerController extends GetxController {
  final RxString profileImagePath = ''.obs;
  final RxString certImagePath = ''.obs;
  final RxString idImagePath = ''.obs;
  final RxString carFrontImagePath = ''.obs;
  final RxString carBackImagePath = ''.obs;
  final RxString carLeftImagePath = ''.obs;
  final RxString carRightImagePath = ''.obs;
  final RxString insideFirst = ''.obs;
  final RxString insideSecond = ''.obs;

  Future<void> getImage(ImageSource source, RxString target) async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: source);
    if (image != null) {
      target.value = image.path;
    } else {
      Get.snackbar(
        'خطأ',
        'لم يتم اختيار الصورة',
        snackPosition: SnackPosition.TOP,
        colorText: black,
        backgroundColor: white,
      );
    }
  }

  void openBottomSheet(ImagePickerController controller, RxString target) {
    Get.bottomSheet(
      Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: black1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 130,
              child: CustomButton(
                onTap: () {
                  controller.getImage(ImageSource.gallery, target);
                  Get.back();
                },
                text: 'المعرض',
              ),
            ),
            SizedBox(width: 40),
            Container(
              height: 60,
              width: 130,
              child: CustomButton(
                onTap: () {
                  controller.getImage(ImageSource.camera, target);
                  Get.back();
                },
                text: 'الكاميرا',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

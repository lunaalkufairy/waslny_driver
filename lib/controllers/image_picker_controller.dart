import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waslny_driver/constants.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImage(ImageSource imageSource) async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: imageSource);
    if (image != null) {
      imagePath.value = image.path;
    } else {
      Get.snackbar(
        'Error',
        'لم يتم اختيار الصورة الشخصية',
        snackPosition: SnackPosition.TOP,
        colorText: black,
        backgroundColor: white,
      );
    }
  }
}

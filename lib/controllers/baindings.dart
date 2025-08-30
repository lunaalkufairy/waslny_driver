import 'package:get/get.dart';
import 'package:waslny_driver/controllers/login_screen_controller.dart';
import 'package:waslny_driver/controllers/otp_page_controller.dart';

class Baindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginScreenController(), permanent: true);
    Get.put(OtpPageController(), permanent: true);
  }
}

import 'package:get/get.dart';

class AvailabilityController extends GetxController {
  var isAvailable = true.obs;

  void toggleAvailability(bool value) {
    isAvailable.value = value;
    if (isAvailable.value) {
      onAvailable();
    } else {
      onBusy();
    }
  }

  void onAvailable() {
    print("🚀 المستخدم صار متاح");
    // حط أي كود بدك ينفذ لما يصير متاح
  }

  void onBusy() {
    print("⛔ المستخدم صار مشغول");
    // حط أي كود بدك ينفذ لما يصير مشغول
  }
}

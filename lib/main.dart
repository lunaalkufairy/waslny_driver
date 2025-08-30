import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:waslny_driver/controllers/baindings.dart';
import 'package:waslny_driver/screens/complete_car_info1_screen.dart';
import 'package:waslny_driver/screens/complete_personal_info1_screen.dart';
import 'package:waslny_driver/screens/login_screen.dart';

void main() {
  runApp(const WaslnyDriver());
}

class WaslnyDriver extends StatelessWidget {
  const WaslnyDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Baindings(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CompleteCarInfo1Screen(),
      ),
    );
  }
}

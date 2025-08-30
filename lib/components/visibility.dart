import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/side_bar.dart';
import 'package:waslny_driver/components/side_bar_button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/availability_controller.dart';
import 'package:waslny_driver/controllers/home_screen_controller.dart';

class AvailabilitySwitch extends StatelessWidget {
  final AvailabilityController controller = Get.put(AvailabilityController());
  HomeScreenController homeScreenController = Get.put(
    HomeScreenController(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 370,
      decoration:
          BoxDecoration(color: black1, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // السويتش يسار
          Obx(() => Switch(
                value: controller.isAvailable.value,
                onChanged: controller.toggleAvailability,
                activeColor: white,
                activeTrackColor: blue,
              )),

          // النص بالنص
          Expanded(
            child: Center(
              child: Obx(() => Text(
                    controller.isAvailable.value ? "متاح" : "مشغول",
                    style: const TextStyle(
                        fontSize: 20, color: white, fontFamily: 'cairo'),
                  )),
            ),
          ),

          // زر دائري يمين
          SideBarButton(onTap: () {
            homeScreenController.openDrawer();
          })
        ],
      ),
    );
  }
}

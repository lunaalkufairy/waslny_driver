import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/googleMap.dart';
import 'package:waslny_driver/components/side_bar.dart';
import 'package:waslny_driver/components/side_bar_button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      key: controller.scaffoldKey,
      endDrawer: Drawer(
        child: SideBar(),
      ),
      backgroundColor: black,
      body: Stack(
        children: [
          MapComponent(isZoomAble: false, ismoveAble: false),
          Align(
            alignment: Alignment(0.88, -0.85),
            child: SideBarButton(
              onTap: () {
                controller.openDrawer();
              },
            ),
          ),
        ],
      ),
    );
  }
}

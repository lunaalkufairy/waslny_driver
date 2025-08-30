import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/image_picker_controller.dart';

class UploadCarFrontPhoto extends StatelessWidget {
  const UploadCarFrontPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.carFrontImagePath);
      },
      child: Obx(() {
        return Container(
          height: 160,
          width: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.15),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: controller.carFrontImagePath.isNotEmpty
              ? Image.file(File(controller.carFrontImagePath.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_car, color: white),
                    Text("السيارة من الأمام", style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

class UploadCarBackPhoto extends StatelessWidget {
  const UploadCarBackPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.carBackImagePath);
      },
      child: Obx(() {
        return Container(
          height: 160,
          width: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.15),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: controller.carBackImagePath.isNotEmpty
              ? Image.file(File(controller.carBackImagePath.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.car_repair, color: white),
                    Text("السيارة من الخلف", style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

class UploadCarLeftPhoto extends StatelessWidget {
  const UploadCarLeftPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.carLeftImagePath);
      },
      child: Obx(() {
        return Container(
          height: 160,
          width: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.15),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: controller.carLeftImagePath.isNotEmpty
              ? Image.file(File(controller.carLeftImagePath.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions, color: white),
                    Text("السيارة من اليسار", style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

class UploadCarRightPhoto extends StatelessWidget {
  const UploadCarRightPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.carRightImagePath);
      },
      child: Obx(() {
        return Container(
          height: 160,
          width: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.15),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: controller.carRightImagePath.isNotEmpty
              ? Image.file(File(controller.carRightImagePath.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_car_filled, color: white),
                    Text("السيارة من اليمين", style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

class Insidefirst extends StatelessWidget {
  const Insidefirst({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.insideFirst);
      },
      child: Obx(() {
        return Container(
          height: 160,
          width: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.15),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: controller.insideFirst.isNotEmpty
              ? Image.file(File(controller.insideFirst.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("     داخلية \n الصف الأول ",
                        style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

class InsideSecond extends StatelessWidget {
  const InsideSecond({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ImagePickerController>();

    return GestureDetector(
      onTap: () {
        controller.openBottomSheet(controller, controller.insideSecond);
      },
      child: Obx(() {
        return Container(
          height: 160,
          width: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.15),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: controller.insideSecond.isNotEmpty
              ? Image.file(File(controller.insideSecond.value))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('      داخلية \n الصف الثاني ',
                        style: TextStyle(color: white)),
                  ],
                ),
        );
      }),
    );
  }
}

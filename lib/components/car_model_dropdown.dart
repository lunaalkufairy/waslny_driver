import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/car_controller.dart';
import 'package:waslny_driver/models/car_model.dart';

class CarModelDropdown extends StatelessWidget {
  final CarController controller = Get.put(CarController());

  CarModelDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // إذا البيانات لسا عم تتحمل
      if (controller.ismLoading.value) {
        return Column(
          children: [
            Align(
              alignment: Alignment(0.8, 0),
              child: Text(
                'اضغط لتحميل الموديلات',
                style: TextStyle(color: Colors.white, fontFamily: 'cairo'),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: blue,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }

      // إذا لسا ما في موديلات محملة
      if (controller.models.isEmpty) {
        return Column(
          children: [
            Align(
              alignment: Alignment(0.8, 0),
              child: Text(
                'اضغط لتحميل الموديلات',
                style: TextStyle(color: Colors.white, fontFamily: 'cairo'),
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                if (controller.selectedCar.value != null) {
                  controller.fetchModelsByManufacturer(
                      controller.selectedCar.value!.id);
                } else {
                  Get.showSnackbar(GetSnackBar(
                    animationDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 2),
                    snackStyle: SnackStyle.GROUNDED,
                    backgroundColor: red,
                    snackPosition: SnackPosition.TOP,
                    title: 'خطأ',
                    message: 'ادخال  اختيار مصنع اولا',
                  ));
                  print("⚠️ لازم تختار مصنع أولاً");
                }
              },
              child: Container(
                width: 350,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: lightWhite),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: Text(
                        'اضغط لتحميل الموديلات',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'cairo'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }

      // Dropdown بعد التحميل
      return Column(
        children: [
          Align(
            alignment: Alignment(0.8, 0),
            child: Text(
              'اضغط لتحميل الموديلات',
              style: TextStyle(color: Colors.white, fontFamily: 'cairo'),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(color: lightWhite),
              borderRadius: BorderRadius.circular(20),
            ),
            child: DropdownButtonFormField<CarModel>(
              value: controller.selectedModel.value,
              isExpanded: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: black1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              dropdownColor: black,
              items: controller.models.map((model) {
                return DropdownMenuItem<CarModel>(
                  value: model,
                  child: Text(
                    "${model.name} (${model.modelYear})",
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'cairo'),
                  ),
                );
              }).toList(),
              onChanged: (model) {
                if (model != null) {
                  controller.selectedModel.value = model;
                  print("🚗 Model: ${model.name}, ID: ${model.id}");
                }
              },
            ),
          ),
        ],
      );
    });
  }
}

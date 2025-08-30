import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/car_controller.dart';
import 'package:waslny_driver/models/car_info.dart';

class CarDropdown extends StatelessWidget {
  final CarController controller = Get.put(CarController());

  CarDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // إذا البيانات لسا عم تتحمل
      if (controller.isLoading.value) {
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

      // إذا البيانات جاهزة
      if (controller.cars.isEmpty) {
        // زر لإعادة المحاولة
        return Column(
          children: [
            Align(
              alignment: Alignment(0.8, 0),
              child: Text(
                'اضغط لتحميل السيارات',
                style: TextStyle(color: Colors.white, fontFamily: 'cairo'),
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () => controller.fetchCars(),
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
                        'اضغط لتحميل السيارات',
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
              'اضغط لتحميل السبارات',
              style: TextStyle(color: Colors.white, fontFamily: 'cairo'),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 350,
            decoration: BoxDecoration(
                border: Border.all(color: lightWhite),
                borderRadius: BorderRadius.circular(20)),
            child: DropdownButtonFormField<Car>(
              value: controller.selectedCar.value,
              isExpanded: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: black1,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
              ),
              dropdownColor: black,
              items: controller.cars.map((car) {
                return DropdownMenuItem<Car>(
                  value: car,
                  child: Text(
                    car.name,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'cairo'),
                  ),
                );
              }).toList(),
              onChanged: (car) {
                controller.selectedCar.value = car;
                controller.manufacturerId = car!.id;
              },
            ),
          ),
        ],
      );
    });
  }
}

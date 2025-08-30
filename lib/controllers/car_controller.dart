import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/otp_page_controller.dart';
import 'package:waslny_driver/models/car_info.dart';
import 'package:waslny_driver/models/car_model.dart';

class CarController extends GetxController {
  OtpPageController controller = Get.find();
  var cars = <Car>[].obs;
  var selectedCar = Rxn<Car>();
  var isLoading = false.obs;
  var ismLoading = false.obs;
  var isFetched = false.obs;
  var models = <CarModel>[].obs;
  var selectedModel = Rxn<CarModel>();
  int? manufacturerId;

  Future<void> fetchCars() async {
    if (isFetched.value) return;
    try {
      isLoading.value = true;
      var url = Uri.parse("$baseUrl/api/car-manufacturers/driver?per_page=10");
      var response = await http.get(
        url,
        headers: {
          "Content-Type": "application/json",
          "Authorization":
              "Bearer 193|oU96yad8tNUrERcln4sUeD0L9WcphxGy3AJmSsSN8d19b513",
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        if (data is Map && data["data"] is List) {
          // جلب الليست من المفتاح data
          cars.value =
              (data["data"] as List).map((e) => Car.fromJson(e)).toList();
          isFetched.value = true;
        } else {
          print("⚠️ Unexpected response format: $data");
        }
      } else {
        print("❌ خطأ في جلب البيانات: ${response.statusCode}");
      }
    } catch (e) {
      print("⚠️ Error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  /// جلب الموديلات حسب الـ manufacturer_id
  Future<void> fetchModelsByManufacturer(int manufacturerId) async {
    try {
      ismLoading.value = true;
      var url = Uri.parse(
          "$baseUrl/api/car-manufacturers/driver/$manufacturerId/car-models");
      var response = await http.get(
        url,
        headers: {
          "Content-Type": "application/json",
          "Authorization":
              "Bearer 193|oU96yad8tNUrERcln4sUeD0L9WcphxGy3AJmSsSN8d19b513",
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data is Map && data["data"] is List) {
          models.value =
              (data["data"] as List).map((e) => CarModel.fromJson(e)).toList();
        }
      } else {
        print("❌ Error: ${response.statusCode}");
      }
    } catch (e) {
      print("⚠️ Exception: $e");
    } finally {
      ismLoading.value = false;
    }
  }
}

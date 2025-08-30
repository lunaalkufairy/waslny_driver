import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/Location_white_circle.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/call_controller.dart';

class EndTripButtomSheet extends StatelessWidget {
  const EndTripButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    CallController callController = Get.put(CallController());
    return Container(
      height: 300,
      width: double.infinity,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: black1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: 185,
                    alignment: Alignment.centerRight,
                    child: Text(
                      ' عبد الحليم حافظ ',
                      style: const TextStyle(
                          color: white, fontFamily: 'cairo', fontSize: 15),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Text(
                    ' : اسم الزبون  ',
                    style: const TextStyle(
                        color: white, fontFamily: 'cairo', fontSize: 17),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'الوقت المقدر للوصول',
                    style: const TextStyle(
                        color: white, fontFamily: 'cairo', fontSize: 17),
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    '2 ساعة',
                    style: const TextStyle(
                        color: white, fontFamily: 'cairo', fontSize: 17),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'المسافة',
                    style: const TextStyle(
                        color: white, fontFamily: 'cairo', fontSize: 17),
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    '50 كم',
                    style: const TextStyle(
                        color: white, fontFamily: 'cairo', fontSize: 17),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'مكان الوجهة : مساكن برزة شارع الثورة',
                style: const TextStyle(
                    color: white, fontFamily: 'cairo', fontSize: 12),
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                width: 20,
              ),
              LocationWhiteCircle(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(onTap: () {}, text: 'وصلت إلى مكان اللقاء')
        ],
      ),
    );
  }
}

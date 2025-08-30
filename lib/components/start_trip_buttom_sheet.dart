import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:waslny_driver/components/Location_white_circle.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/location_grey_circle.dart';
import 'package:waslny_driver/constants.dart';
import 'package:waslny_driver/controllers/call_controller.dart';

class StartTripButtomSheet extends StatelessWidget {
  const StartTripButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    CallController callController = Get.put(CallController());
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: black1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  callController.phoneNumber = '0930474954'.obs;
                  callController.makePhoneCall();
                },
                child: SvgPicture.asset(
                  'assets/icons/Frame 11394.svg',
                  width: 50,
                ),
              ),
              Container(
                width: 150,
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
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'مكان اللقاء : مساكن برزة شارع الثورة',
                style: const TextStyle(
                    color: white, fontFamily: 'cairo', fontSize: 17),
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                width: 20,
              ),
              LocationGreyCircle(),
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

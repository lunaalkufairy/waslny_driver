import 'package:flutter/material.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/multie_Trip_location_card.dart';
import 'package:waslny_driver/constants.dart';

class AcceptTripButtomSheet extends StatelessWidget {
  const AcceptTripButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
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
          // السعر + الوقت
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                child: const Text(
                  textDirection: TextDirection.ltr,
                  " ل.س 10.0000",
                  style: TextStyle(
                      color: white, fontSize: 20, fontFamily: 'cairo'),
                ),
              ),
              Container(
                height: 40,
                width: 100,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "55:55",
                      style: TextStyle(
                          color: black, fontSize: 20, fontFamily: 'cairo'),
                    ),
                    Icon(Icons.timer_rounded),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // ملاحظة صغيرة
          Align(
            alignment: Alignment(0.6, 0),
            child: const Text(
              " دقائق تفصلك عن نقطة اللقاء",
              style: TextStyle(color: white, fontSize: 18, fontFamily: 'cairo'),
            ),
          ),

          Align(
            alignment: Alignment(0.5, 0),
            child: MultieTripLocationCard(
              addresses: ['مساكfffffffffffffن برزة', 'سلام ggggggggعليكم'],
            ),
          ),
          SizedBox(height: 10),

          CustomButton(onTap: () {}, text: 'إبدأ الرحلة')
        ],
      ),
    );
  }
}

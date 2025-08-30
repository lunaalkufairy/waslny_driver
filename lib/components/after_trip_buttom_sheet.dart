import 'package:flutter/material.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/multie_Trip_location_card.dart';
import 'package:waslny_driver/constants.dart';

class AfterTripButtomSheet extends StatelessWidget {
  const AfterTripButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
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
          Center(
              child: Text(
            "وصلت إلى وجهتك",
            style: TextStyle(color: white, fontSize: 21, fontFamily: 'cairo'),
          )),
          // السعر + الوقت

          const SizedBox(height: 25),

          // ملاحظة صغيرة
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
          const SizedBox(height: 25),
          Align(
            alignment: Alignment(0.5, 0),
            child: MultieTripLocationCard(
              addresses: ['مساكfffffffffffffن برزة', 'سلام ggggggggعليكم'],
            ),
          ),
          SizedBox(height: 10),

          CustomButton(onTap: () {}, text: 'إنهاء')
        ],
      ),
    );
  }
}

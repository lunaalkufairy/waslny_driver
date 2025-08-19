import 'package:flutter/material.dart';
import 'package:waslny_driver/constants.dart';

class CompleteCarInfo2Screen extends StatelessWidget {
  const CompleteCarInfo2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black1,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "إكمال المعلومات المركبة",
                  style: TextStyle(
                      color: white, fontSize: 26, fontFamily: 'cairo'),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:waslny_driver/components/custom_Button.dart';
import 'package:waslny_driver/components/custom_textField.dart';
import 'package:waslny_driver/components/page_top.dart';
import 'package:waslny_driver/constants.dart';

class ViewInformationScreen extends StatelessWidget {
  const ViewInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageTop(
              pageName: "الملف الشخصي",
              width: 35,
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
              textFieldName: "الاسم",
              hintText: 'الاسم',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
              textFieldName: "الكنية",
              hintText: 'الكنية',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
              textFieldName: "(اختياري) العنوان",
              hintText: 'العنوان',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
              textFieldName: 'البريد الالكتروني',
              hintText: 'البريد الالكتروني',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
              textFieldName: "رقم الهاتف",
              hintText: "رقم الهاتف",
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'حفظ',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:waslny_driver/components/page_top.dart';
import 'package:waslny_driver/components/settings_components.dart';
import 'package:waslny_driver/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          PageTop(
            pageName: 'الإعدادات',
            width: 60,
          ),
          SettingsComponents()
        ],
      ),
    );
  }
}

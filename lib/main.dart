import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const WaslnyDriver());
}

class WaslnyDriver extends StatelessWidget {
  const WaslnyDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}

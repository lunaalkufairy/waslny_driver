import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waslny_driver/components/money_card.dart';
import 'package:waslny_driver/components/page_top.dart';
import 'package:waslny_driver/constants.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          PageTop(pageName: "المحفظة", width: 65),
          SizedBox(
            height: 25,
          ),
          MoneyCard(balance: 200),
        ],
      ),
    );
  }
}

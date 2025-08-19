import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waslny_driver/constants.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  int? selectedIndex;

  final List<Map<String, String>> options = [
    {"icon": "assets/icons/Gender=Male.svg"},
    {"icon": "assets/icons/Gender=Female.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(options.length, (index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                print(options[index]);
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 186,
              height: 186,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isSelected ? blue : black1,
                border: Border.all(color: blue, width: 1.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: SvgPicture.asset(
                options[index]["icon"]!,
                height: 80,
              ),
            ),
          );
        }),
      ),
    );
  }
}

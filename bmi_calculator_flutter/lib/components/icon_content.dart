// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class IconContents extends StatelessWidget {
  final String label;
  final IconData icon;

  IconContents({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 10),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}

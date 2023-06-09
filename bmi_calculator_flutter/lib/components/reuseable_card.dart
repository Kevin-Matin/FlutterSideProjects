// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {super.key, required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}

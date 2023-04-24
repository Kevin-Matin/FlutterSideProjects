// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme(
          primary: Color(0xFF0A0E21),
          secondary: Colors.pink,
          surface: Colors.white,
          background: Color(0xFF0A0E21),
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
          onBackground: Colors.white,
        ),
      ),
      home: InputPage(),
    );
  }
}












// theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle(color: Colors.white),
      //     bodyMedium: TextStyle(color: Colors.white),
      //     bodySmall: TextStyle(color: Colors.white),
      //   ),
      //   colorScheme: ColorScheme(
      //     primary: Color(0xFF0A0E21),
      //     secondary: Colors.pink,
      //     surface: Colors.white,
      //     background: Color(0xFF0A0E21),
      //     error: Colors.red,
      //     onPrimary: Colors.white,
      //     onSecondary: Colors.white,
      //     onSurface: Colors.black,
      //     onError: Colors.white,
      //     brightness: Brightness.light,
      //     onBackground: Colors.white,
      //   ),
      // ),
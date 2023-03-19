import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      // ignore: prefer_const_constructors
      MaterialApp(
        home: const BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 87),
        title: Text("Ask me anything!"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeBall() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              changeBall();
            });
          },
          child: Image.asset("lib/images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}

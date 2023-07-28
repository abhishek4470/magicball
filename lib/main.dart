import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatelessWidget {
  const MagicBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var value = '3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              Random random = Random();
              int newValue = random.nextInt(5) + 1;
              value = newValue.toString();
            });
          },
          child: Image.asset('assets/ball$value.png'),
        ),
      ),
      backgroundColor: Colors.blueGrey[200],
    );
  }
}
import 'package:bmi/inputpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
    );
  }
}



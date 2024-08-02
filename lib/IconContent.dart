// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {
   Iconcontent({super.key,required this.icon,required this.text});

final IconData icon;
final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        SizedBox(
          height: 15,
        ),
        Text(text,style:textStyle,)
      ],
    );
  }
}

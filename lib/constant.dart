import 'package:bmi/screen0.dart';
import 'package:bmi/screen1.dart';
import 'package:bmi/screen2.dart';
import 'package:flutter/material.dart';

double BottomNavigationBarHeight = 60;
const BottomNavigationBarColor = Color(0xffeb1555);
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);

const textStyle =
    TextStyle(fontSize: 18, color: Color.fromARGB(255, 167, 161, 161));

const numberStyle =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white);
var rou =  {
        '/': (context) => Screen0(),
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
      };

const BottomNavigationBarText = TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white);
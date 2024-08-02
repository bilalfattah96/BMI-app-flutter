// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi/IconContent.dart';
import 'package:bmi/resuseableCards.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

enum gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? selectedGender;
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  // void updateColor(gender selectedGender) {
  //   //updateColor(1)
  //   if (selectedGender == gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (selectedGender == gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI APP',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xff0a0E21),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: mycontainer(
                      onPress: () {
                        setState(() {
                          selectedGender = gender.male;
                        });
                      },
                      color: selectedGender == gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: Iconcontent(
                        icon: Icons.male,
                        text: 'Male',
                      )),
                ),
                Expanded(
                  child: mycontainer(
                      onPress: () {
                        setState(() {
                          selectedGender = gender.female;
                        });
                      },
                      color: selectedGender == gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: Iconcontent(
                        icon: Icons.female,
                        text: 'Female',
                      )),
                ),
              ],
            )),
            Expanded(
              child: mycontainer(
                color: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: textStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '180',
                          style: numberStyle,
                        ),
                        Text('cm',style: textStyle,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: mycontainer(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: mycontainer(
                    color: activeCardColor,
                  ),
                ),
              ],
            )),
            Container(
              color: BottomNavigationBarColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: BottomNavigationBarHeight,
            )
          ],
        ));
  }
}

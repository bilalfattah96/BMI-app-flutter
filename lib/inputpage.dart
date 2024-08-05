// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi/IconContent.dart';
import 'package:bmi/ResultPage.dart';
import 'package:bmi/iconButton.dart';
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
  int height = 150;
  int weight = 50;
  int age = 25;
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
                          height.toString(),
                          style: numberStyle,
                        ),
                        Text(
                          'cm',
                          style: textStyle,
                        )
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 250,
                        // divisions: 4,
                        // label: height.round().toString(),
                        activeColor: Color(0xffeb1555),
                        inactiveColor: Color(0xff8d8e98),
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        })
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: textStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            iconbtn(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            iconbtn(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            //  IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: mycontainer(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: textStyle,
                        ),
                        Text(
                          age.toString(),
                          style: numberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            iconbtn(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            iconbtn(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            //  IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Resultpage(),));
              },
              child: Container(
                child: Center(
                    child: Text(
                  'CALCULATE',
                  style: BottomNavigationBarText,
                ),),
                color: BottomNavigationBarColor,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: BottomNavigationBarHeight,
              ),
            )
          ],
        ));
  }
}

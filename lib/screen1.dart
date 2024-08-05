import 'package:bmi/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: ElevatedButton(
        child: Text('Go to screen 2'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Screen2();
          }));
        },
      ),
    );
  }
}

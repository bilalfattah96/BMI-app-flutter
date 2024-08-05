import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 2'),
      ),
      body: ElevatedButton(child: Text('Go to screen 1'),onPressed: () {
        Navigator.pop(context);
      },),
    );
  }
}
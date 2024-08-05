import 'package:flutter/material.dart';

class iconbtn extends StatelessWidget {
  const iconbtn({super.key, required this.icon, required this.onPress});
  final IconData icon;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      color: Colors.grey,
      icon: Icon(icon),
    );
  }
}
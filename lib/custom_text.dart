import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.myText, {super.key});

  final String myText;

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: const TextStyle(color: Colors.white, fontSize: 32),
    );
  }
}

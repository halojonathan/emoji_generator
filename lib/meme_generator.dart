import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class MemeGenerator extends StatefulWidget {
  const MemeGenerator({super.key});
  @override
  State<MemeGenerator> createState() {
    return _MemeGeneratorState();
  }
}

class _MemeGeneratorState extends State<MemeGenerator> {
  var currentRandomNumber = 1;

  void changeEmoji() {
    setState(() {
      currentRandomNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/cat_$currentRandomNumber.png',
          width: 200,
        ),
        const SizedBox(height: 40),
        TextButton(
          onPressed: changeEmoji,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: Text('Generate Your Cat'),
        )
      ],
    );
  }
}

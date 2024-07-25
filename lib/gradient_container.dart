import 'package:emoji_generator/meme_generator.dart';
import 'package:flutter/material.dart';

//const Color color1 = Color.fromARGB(255, 93, 22, 247);
//const Color color2 = Color.fromARGB(255, 30, 1, 74);

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.color1, required this.color2});

  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.orange;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: MemeGenerator(),
      ),
    );
  }
}

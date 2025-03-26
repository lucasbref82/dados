import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});

  GradientContainer.purple({super.key})
    : colors = [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;

  String activeImageDice = 'assets/images/dice-1.png';

  void rollDice() {
    activeImageDice = 'assets/images/dice-2.png';
    print('Actived image: ' + activeImageDice);
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeImageDice,
              width: 200,
            ),
            SizedBox(
              height: 20
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28
                ),
              ),
              onPressed: rollDice, 
              child: const Text('Rool Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
  
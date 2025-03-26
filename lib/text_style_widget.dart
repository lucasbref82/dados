import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
 const TextStyleWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}

import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {

  const TextStyleWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World!',
      style: TextStyle(
        color: Colors.black,
        fontSize: 28
      ), 
    );
  }
}
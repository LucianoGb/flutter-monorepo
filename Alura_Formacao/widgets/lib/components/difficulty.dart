import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficyltyLevel;
  const Difficulty({
    super.key,
    required this.difficyltyLevel,
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (difficyltyLevel >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficyltyLevel >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficyltyLevel >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficyltyLevel >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficyltyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}

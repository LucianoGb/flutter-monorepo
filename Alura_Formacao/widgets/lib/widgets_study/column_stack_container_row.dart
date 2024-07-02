import 'package:flutter/material.dart';

class ColumnStackContainerRow extends StatelessWidget {
  const ColumnStackContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              height: 50,
              width: 50,
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.red,
              height: 50,
              width: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.cyan,
              width: 50,
              height: 50,
            ),
            Container(color: Colors.pinkAccent, width: 50, height: 50),
            Container(color: Colors.purple, width: 50, height: 50),
          ],
        )
      ],
    );
  }
}

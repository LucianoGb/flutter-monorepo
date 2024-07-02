import 'package:flutter/material.dart';

class TextElavatedButton extends StatelessWidget {
  const TextElavatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 30,
          color: Colors.amberAccent,
          child: const Text(
            'Ola sou um texto',
            style: TextStyle(color: Colors.black, fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text('Aperte o botão!'))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: [
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.limeAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: const ListTile())
        ],
      ),
    );
  }
}

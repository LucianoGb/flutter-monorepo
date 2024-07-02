import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:love_you/seccondPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Eu te amo!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Meu amor',
                style: TextStyle(fontSize: 26),
              ),
              Text('Feliz dia dos namorados!', style: TextStyle(fontSize: 26)),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                height: 500,
                child: Image.asset(
                  'images/casamento_1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contextNew) => Seccondpage(),
                    ),
                  );
                },
                child: Icon(Icons.favorite),
              )
            ],
          ),
        ));
  }
}

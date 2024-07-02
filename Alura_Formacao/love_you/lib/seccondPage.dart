import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:love_you/thirdpage.dart';

class Seccondpage extends StatelessWidget {
  const Seccondpage({super.key});

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Nossa história começou bem rápido e já tivemos que enfrentar a aceitação dos seus pais mas juntos podemos tudo nunca esqueça disso.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                height: 400,
                child: Image.asset(
                  'images/eu_leh.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contextNew) => Thirdpage(),
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

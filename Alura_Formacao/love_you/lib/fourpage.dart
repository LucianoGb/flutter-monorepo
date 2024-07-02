import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:love_you/lastPage.dart';

class Fourpage extends StatelessWidget {
  const Fourpage({super.key});

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Eu amo passar meus dias ao teu lado, você não tem noção do amor, admiração e lealdade que tenho por você.Eu te amo demais e peço a Deus para passar o resto da minha vida ao teu lado e que juntos possamos continuar construindo nossa família e envelhecer juntos.',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                height: 400,
                child: Image.asset(
                  'images/eueela.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contextNew) => Lastpage(),
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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:love_you/fourpage.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

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
                    'Juntos vencemos muitas coisas e conquistamos diversas coisas. Juntos servirmos a Deus e ele vem nos abençoando e nos deu o nosso maior presente que é nosso pequeno.',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                height: 400,
                child: Image.asset(
                  'images/familia.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contextNew) => Fourpage(),
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

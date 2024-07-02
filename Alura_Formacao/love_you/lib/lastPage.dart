import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lastpage extends StatelessWidget {
  const Lastpage({super.key});

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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            height: 800,
            child: Image.asset(
              'images/casamento_ultima.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "EU TE AMO DEMAIS, PRONTA PARA SURPRESA?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                        backgroundColor: Colors.black87),
                  ),
                ),
              ),
              // Center(
              //   child: FloatingActionButton(
              //     onPressed: () {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //     builder: (contextNew) => FourPage(
              //       //       taskContext: context,
              //       //     ),
              //       //   ),
              //       // );
              //     },
              //     child: Icon(Icons.favorite),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContainerBottomElipse extends StatelessWidget {
  const ContainerBottomElipse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Stack(
        children: [
          Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(400, 100)))),
          // Container(
          //   height: 400,
          //   width: 300,
          //   decoration: BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.horizontal(
          //           left: Radius.elliptical(20, 20),
          //           right: Radius.elliptical(500, 500))),
          // ),
        ],
      ),
    );
  }
}

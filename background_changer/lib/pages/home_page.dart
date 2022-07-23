import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Color> colorsList = [
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.white,
    Colors.yellow
  ];
  var random = new Random();
  late int colorIndex = random.nextInt(colorsList.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background_Changer"),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          return SafeArea(
              child: GestureDetector(
            onTap: () {
              setState((){
                colorIndex = random.nextInt(colorsList.length);
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: colorsList[colorIndex],
            ),
          ));
        },
      ),
    );
  }
}

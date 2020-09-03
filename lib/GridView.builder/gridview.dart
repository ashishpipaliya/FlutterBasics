import 'dart:math';

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder in flutter"),
      ),
      body: GridViewWidget(),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
            duration: Duration(milliseconds: 100),
            content: Text((index + 1).toString() + " pressed"))),
        child: Card(
          child: Container(
            child: Center(
              child: Text(
                (index + 1).toString(),
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            color: Colors
                .accents[Random().nextInt(Colors.accents.length)].shade100,
          ),
        ),
      ),
      itemCount: 50,
      shrinkWrap: true,
    );
  }
}

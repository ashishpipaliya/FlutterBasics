import 'dart:math';

import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mqd = MediaQuery.of(context);
    final orientation = mqd.orientation;

    return Scaffold(
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.portrait ? 2 : 5),
            itemCount: 20,
            itemBuilder: (context, index) => Container(
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        fontSize: index.toDouble() + 10,
                      ),
                    ),
                  ),
                  color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)]
                      [100],
                )),
      ),
    );
  }
}

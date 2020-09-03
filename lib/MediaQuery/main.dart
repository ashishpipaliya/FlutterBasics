import 'package:flutter/material.dart';

import 'gridview.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define MediaQurey to use it in whole WidgetTree
    MediaQueryData mqd = MediaQuery.of(context);

    final size = mqd.size;
    final orientation = mqd.orientation;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: size.width <= 800
              ? Container(
                  width: mqd.size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 200,
                  color: Colors.yellow[200],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "orientation is $orientation &  Width is ${size.width} means <=800",
                          style: TextStyle(fontSize: 20),
                        ),
                        RaisedButton.icon(
                            color: Colors.white,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyGridView())),
                            icon: Icon(Icons.arrow_forward_ios),
                            label: Text("Tap to view another example"))
                      ],
                    ),
                  ))
              : Container(
                  width: mqd.size.width,
                  height: 300,
                  color: Colors.red[200],
                  child: Center(
                    child: Text(
                      "orientation is $orientation & Width is ${size.width} so we can define different layout here for this width",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
        ),
      ),
    );
  }
}

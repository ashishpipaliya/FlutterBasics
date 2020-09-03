import 'dart:math';

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dismissible"),
        ),
        body: DismissibleWidget());
  }
}

final items = List<String>.generate(20, (i) => "index ${i + 1}");

class DismissibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Dismissible(
              background: Container(),
              key: Key(items[index]),
              onDismissed: (direction) {
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("${items[index]} dismissed"),
                    duration: Duration(milliseconds: 500)));
              },
              child: Card(
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)][100],
                child: ListTile(
                  title: Text(items[index]),
                ),
              ),
            ));
  }
}

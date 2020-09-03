import 'dart:math';

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder in Flutter"),
      ),
      body: ListViewWidget(),
    );
  }
}

List<String> titles = [
  "Hello",
  "This",
  "Is",
  "List",
  "Of",
  "Data",
  "From",
  "Which",
  "We",
  "Will",
  "Add",
  "Data",
  "To",
  "List",
  "View",
  "Builder",
  "That's",
  "All"
];

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        final title = titles[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors
                  .primaries[Random().nextInt(Colors.primaries.length)][100],
              child: Text(
                title.substring(0, 1),
                style: TextStyle(fontSize: 30),
              ),
            ),
            title: Text(title),
          ),
        );
      },
    );
  }
}

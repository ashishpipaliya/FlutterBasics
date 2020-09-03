import 'package:flutter/material.dart';
import 'package:practice_hub/Dismissible/dismissible.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Flutter',
      home: Main(),
    );
  }
}

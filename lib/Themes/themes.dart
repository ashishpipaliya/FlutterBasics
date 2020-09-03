import 'package:flutter/material.dart';

class CustomThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Themes in Flutter"),
        actions: [IconButton(icon: Icon(Icons.info), onPressed: () {})],
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.ac_unit), onPressed: () {}),
    );
  }
}

// Custom Themes
ThemeData blackTheme = ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));

ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));

ThemeData darkTheme = ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.greenAccent,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));

ThemeData purpleWhite = ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.purple,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.purple,
      ),
    ));

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => NamedRouteWidget(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/forth': (context) => FourthScreen(),
      },
    );
  }
}

class NamedRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routes"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.red[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen"),
            FlatButton(
                color: Colors.amber.shade200,
                onPressed: () => Navigator.pushNamed(context, '/second'),
                child: Text("Second Screen")),
            FlatButton(
                color: Colors.green.shade200,
                onPressed: () => Navigator.pushNamed(context, '/third'),
                child: Text("Third Screen")),
            FlatButton(
                color: Colors.purple.shade200,
                onPressed: () => Navigator.pushNamed(context, '/forth'),
                child: Text("Forth Screen"))
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[100],
        child: Center(
          child: Text(
            "Second Screen",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[100],
        child: Center(
          child: Text(
            "Third Screen",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[100],
        child: Center(
          child: RaisedButton(
            onPressed: () => Navigator.pushNamed(context, "/"),
            child: Text(
              "This is Fourth Screen and Press to go to Home Screen",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

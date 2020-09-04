import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NavigatorWidget());
  }
}

class NavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Screen"),
      ),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: FlatButton(
            color: Colors.blue,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                )),
            child: Text("Go to Screen 2")),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Screen 2"),
      ),
      backgroundColor: Colors.red.shade50,
      body: Center(
        child: FlatButton(
            color: Colors.red,
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen3(),
                )),
            child: Text("Go to  Screen 3 and try pressing back")),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Screen 3"),
      ),
      backgroundColor: Colors.brown.shade50,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton(
                color: Colors.brown,
                onPressed: () => Navigator.pop(context),
                child: Text("one screen backward")),
            FlatButton(
                color: Colors.brown,
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen4(),
                    )),
                child: Text("goto screen 4")),
          ],
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Screen 4"),
      ),
      backgroundColor: Colors.yellow.shade50,
      body: Center(
        child: FlatButton(
            color: Colors.yellow,
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NavigatorWidget(),
                )),
            child: Text("Press and you will be on HomeScreen")),
      ),
    );
  }
}

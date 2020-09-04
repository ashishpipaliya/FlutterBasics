import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReturnDataFromScreen(),
    );
  }
}

class ReturnDataFromScreen extends StatefulWidget {
  @override
  _ReturnDataFromScreenState createState() => _ReturnDataFromScreenState();
}

class _ReturnDataFromScreenState extends State<ReturnDataFromScreen> {
  var titletext = "Text will change hare";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(titletext, style: TextStyle(fontSize: 30)),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnotherScreen()));
                  },
                  color: Colors.blue.shade100,
                  child: Text("Navigate to another screen"))
            ],
          ),
        ),
      ),
    );
  }
}

class AnotherScreen extends StatefulWidget {
  @override
  _AnotherScreenState createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  String textfieldvalue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Screen"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    textfieldvalue = value;
                  });
                },
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, textfieldvalue);
                  },
                  color: Colors.blue.shade100,
                  child: Text("return data to previus screen"))
            ],
          ),
        ),
      ),
    );
  }
}

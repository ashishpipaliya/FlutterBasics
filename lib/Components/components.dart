import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: MyComponents()),
    );
  }
}

class MyComponents extends StatefulWidget {
  @override
  _MyComponentsState createState() => _MyComponentsState();
}

class _MyComponentsState extends State<MyComponents> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropDownWidget(),
            PopupMenuButtonWidget(),
            FlatButtonWidget(),
            RaisedButtonWidget(),
            OutlineButtonWidget(),
            IconButtonWidget(),
            TextFIeldWidget(),
            RichTextWidget(),
            TextWidget(),
          ],
        ),
      ),
    );
  }
}

class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: dropdownValue,
        hint: Text("DropDown"),
        icon: Icon(Icons.arrow_drop_down),
        items: [
          DropdownMenuItem(
            child: Text("Data 1"),
            value: "Data 1",
          ),
          DropdownMenuItem(
            child: Text("Data 2"),
            value: "Data 2",
          ),
          DropdownMenuItem(
            child: Text("Data 3"),
            value: "Data 3",
          ),
          DropdownMenuItem(
            child: Text("Data 4"),
            value: "Data 4",
          ),
          DropdownMenuItem(
            child: Text("Data 5"),
            value: "Data 5",
          ),
        ],
        onChanged: (selectedValue) {
          setState(() {
            dropdownValue = selectedValue;
          });
        });
  }
}

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlatButton(
          onPressed: () {},
          color: Colors.amber,
          splashColor: Colors.red.shade100,
          child: Text("Flat Button"),
        ),
        FlatButton.icon(
          onPressed: () {},
          color: Colors.red,
          icon: Icon(Icons.android, color: Colors.white),
          label: Text(
            "Flat Button with Icon",
            style: TextStyle(color: Colors.white),
          ),
          splashColor: Colors.amber.shade100,
        )
      ],
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Icon Buttons --> "),
        IconButton(
            color: Colors.green,
            iconSize: 30,
            tooltip: "Alarm Icon Button",
            highlightColor: Colors.green[50],
            splashColor: Colors.orange[50],
            icon: Icon(Icons.access_alarm),
            onPressed: () {}),
        IconButton(icon: Icon(Icons.access_alarm), onPressed: () {}),
        Ink(
          decoration: ShapeDecoration(
            color: Colors.green.shade400,
            shape: CircleBorder(),
          ),
          child: IconButton(
              color: Colors.white,
              iconSize: 30,
              tooltip: "Icon Button with background",
              icon: Icon(Icons.access_alarm),
              onPressed: () {}),
        ),
      ],
    );
  }
}

class OutlineButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlineButton(
          textColor: Colors.red,
          highlightedBorderColor: Colors.white,
          borderSide:
              BorderSide(color: Colors.red, width: 1, style: BorderStyle.solid),
          child: Text("Outline Button"),
          onPressed: () {},
        ),
        OutlineButton.icon(
          icon: Icon(Icons.apps),
          textColor: Colors.red,
          highlightedBorderColor: Colors.white,
          borderSide:
              BorderSide(color: Colors.red, width: 1, style: BorderStyle.solid),
          label: Text("Outline Button with Icon"),
          onPressed: () {},
        ),
      ],
    );
  }
}

enum MenuItems { Android, iOS, MacOS, Linux, Windows }

class PopupMenuButtonWidget extends StatefulWidget {
  @override
  _PopupMenuButtonWidgetState createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  var text = " <- this is POPUP menu | Select Option";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PopupMenuButton<MenuItems>(
          onSelected: (MenuItems value) {
            setState(() {
              text = value.toString().split(".").last;
            });
          },
          itemBuilder: (context) => <PopupMenuEntry<MenuItems>>[
            PopupMenuItem(child: Text("Android"), value: MenuItems.Android),
            PopupMenuItem(child: Text("iOS"), value: MenuItems.iOS),
            PopupMenuItem(child: Text("MacOS"), value: MenuItems.MacOS),
            PopupMenuItem(child: Text("Linux"), value: MenuItems.Linux),
            PopupMenuItem(child: Text("Windows"), value: MenuItems.Windows)
          ],
        ),
        SizedBox(width: 30),
        Text(text)
      ],
    );
  }
}

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RaisedButton(
          onPressed: () {},
          color: Colors.amber.shade300,
          child: Text("Raised Button"),
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.android),
          color: Colors.amber.shade300,
          label: Text("Raised Button with Icon"),
        ),
      ],
    );
  }
}

class TextFIeldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Email | Simple TextField",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: "Email | TextField",
            prefixIcon: Icon(
              Icons.mail_outline,
              color: Colors.red,
            ),
            labelStyle: TextStyle(color: Colors.red),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 1,
                )),
            border: OutlineInputBorder(
              gapPadding: 5,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            labelText: "Password  | TextField",
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.red,
            ),
            labelStyle: TextStyle(color: Colors.red),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 1,
                )),
            border: OutlineInputBorder(
              gapPadding: 5,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      textAlign: TextAlign.center,
      textScaleFactor: 1.5,
      text: TextSpan(
          text: "A word of this line is ",
          style: TextStyle(color: Colors.blue),
          children: [
            TextSpan(
                text: "Bold",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            TextSpan(text: " because this is RichText")
          ]),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Normal Text",
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}

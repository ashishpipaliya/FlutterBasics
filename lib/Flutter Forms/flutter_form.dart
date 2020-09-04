import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterFormWidget(),
    );
  }
}

class FlutterFormWidget extends StatefulWidget {
  @override
  _FlutterFormWidgetState createState() => _FlutterFormWidgetState();
}

class _FlutterFormWidgetState extends State<FlutterFormWidget> {
  final _formKey = GlobalKey<FormState>();
  var emailErr, passErr;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  String email, password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _email,
              validator: (value) {
                if (value.isEmpty) {
                  setState(() {
                    emailErr = "Enter an email please";
                  });
                } else if (!value.contains("@")) {
                  setState(() {
                    emailErr = "Enter valid email please";
                  });
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: _formDecoration.copyWith(
                prefixIcon: Icon(Icons.mail_outline),
                labelText: 'Email',
                errorText: emailErr,
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
                controller: _password,
                validator: (value) {
                  if (value.isEmpty) {
                    setState(() {
                      passErr = "Enter password please";
                    });
                  }
                  return null;
                },
                decoration: _formDecoration.copyWith(
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: 'Password',
                  errorText: passErr,
                )),
            SizedBox(height: 30),
            OutlineButton.icon(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    setState(() {
                      email = _email.text.toString();
                      password = _password.text.toString();
                    });
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content:
                            Text("Email : $email & password : $password ")));
                  }
                },
                icon: Icon(Icons.arrow_forward_ios),
                label: Text("Login")),
          ],
        ),
      ),
    );
  }
}

final InputDecoration _formDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.brown),
  errorStyle: TextStyle(color: Colors.red),
  prefixStyle: TextStyle(color: Colors.brown),
  enabledBorder: enabledBorder,
  focusedBorder: focusedBorder,
  errorBorder: errorBorder,
);

final enabledBorder = OutlineInputBorder(
    borderSide:
        BorderSide(color: Colors.brown, style: BorderStyle.solid, width: 0.5),
    borderRadius: BorderRadius.circular(30),
    gapPadding: 2);

final focusedBorder = OutlineInputBorder(
    borderSide:
        BorderSide(color: Colors.brown, style: BorderStyle.solid, width: 1),
    borderRadius: BorderRadius.circular(30),
    gapPadding: 2);

final errorBorder = OutlineInputBorder(
    borderSide:
        BorderSide(color: Colors.red, style: BorderStyle.solid, width: 0.5),
    borderRadius: BorderRadius.circular(30),
    gapPadding: 2);

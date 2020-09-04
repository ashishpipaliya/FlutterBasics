import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilderWidget(),
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
    );
  }
}

Future fetchData() async {
  final String url = "https://jsonplaceholder.typicode.com/todos";
  http.Response res = await http.get(url);
  return jsonDecode(res.body);
}

class FutureBuilderWidget extends StatefulWidget {
  @override
  _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchData(),
      builder: (context, snapshot) => snapshot.hasData
          ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[50],
                  child: Text(snapshot.data[index]["id"].toString()),
                ),
                title: Text(snapshot.data[index]["title"]),
              ),
            )
          : Center(child: CupertinoActivityIndicator()),
    );
  }
}

class JsonData {
  int userId;
  int id;
  String title;
  bool completed;

  JsonData({this.userId, this.id, this.title, this.completed});

  JsonData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyBottomTabBar();
  }
}

List<Tab> tabList = [
  Tab(text: "With Text", icon: Icon(Icons.ondemand_video)),
  Tab(icon: Icon(Icons.library_music)),
  Tab(icon: Icon(Icons.camera))
];

List<Widget> tabsViewList = [
  Container(
    color: Colors.red.shade100,
    child: Center(
      child: Icon(Icons.ondemand_video, size: 100),
    ),
  ),
  Container(
    color: Colors.amber.shade100,
    child: Center(
      child: Icon(Icons.library_music, size: 100),
    ),
  ),
  Container(
    color: Colors.purple.shade100,
    child: Center(
      child: Icon(Icons.camera, size: 100),
    ),
  ),
];

class MyBottomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Appbar with bottom tabs"),
          bottom: TabBar(tabs: tabList),
        ),
        body: TabBarView(children: tabsViewList),
      ),
    );
  }
}

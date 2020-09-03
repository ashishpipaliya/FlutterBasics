import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Left Navigation Drawer"),
      ),
      body: Container(color: Colors.white),
      drawer: Drawer(
        child: DrawerContent(),
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Ashish Pipaliya", style: TextStyle(fontSize: 25)),
          accountEmail: Text(
            "ashish.pipaliya22@gmail.com",
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.account_circle, size: 50),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue.shade500, Colors.red.shade500])),
        ),
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('One'),
          onTap: () {},
        ),
        Divider(thickness: 1),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text('Two'),
          onTap: () {},
        ),
        Divider(thickness: 1),
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Three'),
          onTap: () {},
        ),
        Divider(thickness: 1),
        ListTile(
          leading: Icon(Icons.adb),
          title: Text('Four'),
          onTap: () {},
        ),
        Divider(thickness: 1),
        ListTile(
          leading: Icon(Icons.add_shopping_cart),
          title: Text('Five'),
          onTap: () {},
        ),
        Divider(thickness: 1),
        ListTile(
          leading: Icon(Icons.apps),
          title: Text('Six'),
          onTap: () {},
        ),
        Divider(thickness: 1),
      ],
    );
  }
}

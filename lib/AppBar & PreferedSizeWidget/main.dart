import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: "AppBar Using PreferedSizeWidget",
      color: Colors.amber,
      actions: [
        IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
            onPressed: () {
              print("appbar button clicked");
            })
      ],
    );
  }
}

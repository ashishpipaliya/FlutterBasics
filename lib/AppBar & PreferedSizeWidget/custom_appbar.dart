import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color color, titleColor;
  final List<Widget> actions;

  @override
  final Size preferredSize;

  CustomAppBar(
      {this.title,
      this.color = Colors.white,
      this.actions,
      this.titleColor = Colors.black})
      : preferredSize = Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 55,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: color,
            //  boxShadow: const [
            // BoxShadow(
            //   color: Colors.black26,
            //   blurRadius: 4.0,
            //   offset: Offset(0, 2),
            // )
            // ]
          ),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: titleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )),
              Wrap(children: actions),
            ],
          ),
        ),
      ),
    );
  }
}

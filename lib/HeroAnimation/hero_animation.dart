import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeroAnim(),
      appBar: AppBar(
        title: Text("Hero"),
      ),
    );
  }
}

class HeroAnim extends StatelessWidget {
  final String url =
      "https://ouch-cdn.icons8.com/preview/818/82ee331c-f567-4ce2-adec-708a21a05663.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OpenImage(url: url),
                )),
            child: Hero(tag: url, child: Image.network(url)),
          ),
        ),
      ),
    );
  }
}

class OpenImage extends StatelessWidget {
  final String url;

  const OpenImage({Key key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Image"),
      ),
      body: Hero(
        tag: url,
        child: Center(
          child: Container(
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}

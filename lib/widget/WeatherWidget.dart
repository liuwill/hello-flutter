import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class WeatherWidget extends StatefulWidget {
  @override
  createState() => new WeatherState();
}

class WeatherState extends State<WeatherWidget> {
  final _city = "KunMing";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weather Viewer'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: () {}),
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'The Weather You Live:',
            ),
            new Text(
              '$_city',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );

  }
}

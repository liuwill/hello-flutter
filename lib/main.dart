import 'package:flutter/material.dart';
import 'package:hello_flutter/widget/RandomWords.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // title: 'Welcome to Flutter',
      title: 'Hello Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Hello Flutter Demo'),
        ),
        body: new DemoScreen(),
        floatingActionButton: buildActionButton(),
      ),
    );
  }

  Widget buildActionButton() {
    return new FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {

      },
    );
  }
}

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton.icon(
          key: new Key("name-pair-btn"),
          // child: Text('Name Pair Generator'),
          icon: const Icon(Icons.album, size: 18.0),
          label: const Text('Name Pair Generator'),
          onPressed: () {
            // Navigate to second screen when tapped!
            openGenerator(context);
          },
        ),
      ),
    );
  }

  void openGenerator (BuildContext context) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new RandomWords();
        },
      ),
    );
  }
}

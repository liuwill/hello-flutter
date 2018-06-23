import 'package:flutter/material.dart';
import 'package:hello_flutter/widget/RandomWords.dart';

// void main() => runApp(new GeneratorApp());

class GeneratorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // title: 'Welcome to Flutter',
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.indigoAccent,
      ),
      home: new RandomWords(),
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/nav-drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fantaro',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Image.asset('assets/images/icon.png'),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Center(
              child: Text('Hello, world!' '\n' 'Hello, world!'),
            )));
  }
}

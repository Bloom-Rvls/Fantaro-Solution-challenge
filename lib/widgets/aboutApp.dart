import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About app'),
      ),
      body: Center(
        child: Text('This is the About app!'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String _text;

  Home(this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Text(this._text),
    );
  }
}

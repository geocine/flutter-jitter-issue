import 'package:flutter/material.dart';
import 'package:jitter/widgets/header.dart';

class Home extends StatelessWidget {
  final String _text;

  Home(this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
          appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        title: Text('Hello'),
      )),
      body: Center(
        child: Text(this._text),
      ),
    );
  }
}

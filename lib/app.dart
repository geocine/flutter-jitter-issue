import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'widgets/app_window.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppWindow(
        body: Home('Hello World'),
      ),
    );
  }
}

// ignore: import_of_legacy_library_into_null_safe
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:jitter/app.dart';
import 'package:jitter/locator/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Register all the models and services before the app starts
  configureDependencies();

  runApp(App());

  doWhenWindowReady(() {
    final initialSize = Size(600, 450);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

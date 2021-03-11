import 'package:flutter/material.dart';
import 'package:jitter/app.dart';
import 'package:jitter/locator/locator.dart';

import 'services/window_size_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Register all the models and services before the app starts
  configureDependencies();

  await locator<WindowSizeService>().initialize();

  runApp(App());
}

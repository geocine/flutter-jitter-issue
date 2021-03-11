// ignore: import_of_legacy_library_into_null_safe
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

const backgroundColorDefault = Color(0xFF222222);
const borderColor = Color(0xFF222222);

class AppWindow extends StatelessWidget {
  final Widget body;
  final Color backgroundColor;

  AppWindow({
    required this.body,
    this.backgroundColor = backgroundColorDefault,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: borderColor,
        width: 1,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: backgroundColor),
                child: Column(
                  children: [
                    WindowTitleBarBox(
                      child: Row(
                        children: [
                          Expanded(child: MoveWindow()),
                          WindowButtons(),
                        ],
                      ),
                    ),
                    Expanded(child: body),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const buttonColors = WindowButtonColors(
    iconNormal: Color(0xFF805306),
    mouseOver: Color(0xFFF6A00C),
    mouseDown: Color(0xFF805306),
    iconMouseOver: Color(0xFF805306),
    iconMouseDown: Color(0xFFFFD500));

const closeButtonColors = WindowButtonColors(
    mouseOver: Color(0xFFD32F2F),
    mouseDown: Color(0xFFB71C1C),
    iconNormal: Color(0xFF805306),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}

// ignore: import_of_legacy_library_into_null_safe
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

const defaultKey = Key("Header");

class Header extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const Header({Key key = defaultKey, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoveWindow(
      child: AppBar(
        title: appBar.title,
        backgroundColor: appBar.backgroundColor,
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

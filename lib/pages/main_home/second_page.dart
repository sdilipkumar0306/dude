import 'package:dude/util/ui/app_menu/app_menu.dart';
import 'package:dude/util/ui/common_ui.dart';
import 'package:flutter/material.dart';

class SecondPageUi extends StatefulWidget {
  const SecondPageUi({Key? key}) : super(key: key);

  @override
  _SecondPageUiState createState() => _SecondPageUiState();
}

class _SecondPageUiState extends State<SecondPageUi> {
  @override
  Widget build(BuildContext context) {
    return AppMenuUi(
        body: Container(
      color: getPrimaryBgColor(context),
      child: const Center(
        child: Text("Home page"),
      ),
    ));
  }
}

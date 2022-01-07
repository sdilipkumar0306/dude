import 'package:dude/util/ui/app_menu/app_menu.dart';
import 'package:dude/util/ui/common_ui.dart';
import 'package:flutter/material.dart';

class MainHomeUi extends StatefulWidget {
  const MainHomeUi({Key? key}) : super(key: key);

  @override
  _MainHomeUiState createState() => _MainHomeUiState();
}

class _MainHomeUiState extends State<MainHomeUi> {
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

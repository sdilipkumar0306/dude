import 'package:flutter/material.dart';

Widget circularLoader([double size = 150]) {
  return SizedBox(width: size, height: size, child: const CircularProgressIndicator());
}

Color getPrimaryColor(BuildContext context) => Theme.of(context).primaryColor;
Color getPrimaryBgColor(BuildContext context) => Theme.of(context).backgroundColor;

Widget horizontaiSpacing([double width = 5]) => SizedBox(width: width);
Widget verticalSpacing([double height = 5]) => SizedBox(height: height);

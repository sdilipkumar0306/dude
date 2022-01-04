import 'package:flutter/material.dart';
import 'pages/splash_screen/splash_screen.dart';
import 'util/constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      // theme: ThemeData.light(),
      theme: ThemeData.dark(),
      // theme: appLightThemeData,
      darkTheme: ThemeData(backgroundColor: Colors.black87),
      home: const SplashScreen(),
    );
  }
}

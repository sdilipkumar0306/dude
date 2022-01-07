import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/splash_screen/splash_screen.dart';
import 'util/constants/app_constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      // theme: ThemeData.light(),
      // theme: ThemeData.dark(),
      theme: appLightThemeData,
      darkTheme: ThemeData(backgroundColor: Colors.black87),
      home: const SplashScreen(),
    );
  }
}

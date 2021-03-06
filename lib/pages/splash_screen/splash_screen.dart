import 'dart:async';
import 'package:dude/pages/sign_in_up/login_page_ui.dart';
import 'package:dude/util/ui/common_ui.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Size size = Size.zero;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    navigateTonextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: circularLoader(),
        ),
      ),
    );
  }

  void navigateTonextPage() {
    Timer(const Duration(milliseconds: 200), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginUi()), (route) => false);
    });
  }
}

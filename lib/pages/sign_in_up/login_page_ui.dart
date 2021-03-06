import 'package:dude/pages/main_home/main_home_ui.dart';
import 'package:dude/pages/sign_in_up/register_page_ui.dart';
import 'package:dude/util/constants/app_constants.dart';
import 'package:dude/util/ui/login_in_paint.dart';
import 'package:dude/util/ui/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  Size size = Size.zero;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisable = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            color: Colors.cyan.shade300,
            width: size.width,
            height: size.height,
            child: CustomPaint(
              painter: LoginPagePainter(),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Center(
                              child: Container(
                            margin: const EdgeInsets.all(20),
                            width: 150,
                            height: 150,
                            child: Card(
                              color: Colors.white,
                              shadowColor: myColor,
                              elevation: 6,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                              child: Icon(
                                Icons.person,
                                size: 80,
                                color: myColor,
                              ),
                            ),
                          )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            child: MyTextField(
                              controller: nameController,
                              borderColor: myColor,
                              lableText: "User Id",
                              hintText: "Enter User Id",
                              textFieldColor: Colors.transparent.withOpacity(0.1),
                              keyboardType: TextInputType.emailAddress,
                              style: GoogleFonts.prata(color: myColor, fontWeight: FontWeight.bold, letterSpacing: 1),
                              fieldtextStyle: GoogleFonts.prata(color: myColor, fontWeight: FontWeight.bold, letterSpacing: 3),
                              prefixIcon: Icon(
                                Icons.person,
                                color: myColor,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            child: MyTextField(
                              controller: passwordController,
                              borderColor: myColor,
                              lableText: "Password",
                              hintText: "Enter Password",
                              keyboardType: TextInputType.visiblePassword,
                              textFieldColor: Colors.transparent.withOpacity(0.1),
                              style: GoogleFonts.prata(color: myColor, fontWeight: FontWeight.bold, letterSpacing: 1),
                              fieldtextStyle: GoogleFonts.prata(color: myColor, fontWeight: FontWeight.bold, letterSpacing: 3),
                              prefixIcon: Icon(
                                Icons.shield,
                                color: myColor,
                              ),
                              showtext: isPasswordVisable,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    isPasswordVisable = !isPasswordVisable;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    isPasswordVisable ? Icons.visibility_off : Icons.visibility,
                                    color: myColor,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: MyText(
                                    "Forget Password?",
                                    style: GoogleFonts.lobster(
                                      fontSize: 16,
                                      color: myColor,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ResisterUi()), (route) => false);
                                  },
                                  child: MyText(
                                    "New here? SignUp",
                                    style: GoogleFonts.vollkorn(
                                      fontSize: 16,
                                      color: myColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          signWithCard(
                            icon: Icon(
                              Icons.g_mobiledata_rounded,
                              size: 40,
                              color: Theme.of(context).primaryColor,
                            ),
                            type: "Google",
                            bgColor: Colors.blue.shade400,
                            onTap: () {},
                          ),
                          signWithCard(
                            icon: Icon(
                              Icons.phone,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            ),
                            type: "Phone",
                            bgColor: myColor,
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                      top: (size.height * 0.72) - 25,
                      left: (size.width * 0.73) - 50,
                      child: SizedBox(
                          width: 120,
                          height: 50,
                          child: InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MainHomeUi()), (route) => false);
                              },
                              child: Row(
                                children: [
                                  MyText(
                                    "LogIn",
                                    style: GoogleFonts.oleoScript(
                                      color: myColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                    child: Icon(
                                      Icons.login,
                                      size: 30,
                                      color: myColor,
                                    ),
                                  ),
                                ],
                              ))))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget signWithCard({required Icon icon, required String type, required Color bgColor, required void Function() onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      height: 50,
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration:
                      const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5))),
                  width: 60,
                  height: 50,
                  child: icon),
              Expanded(
                  child: Center(
                      child: MyText(
                "Sign in with $type",
                style: GoogleFonts.abrilFatface(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              )))
            ],
          ),
        ),
      ),
    );
  }
}

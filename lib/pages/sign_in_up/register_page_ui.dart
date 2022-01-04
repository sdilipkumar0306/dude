import 'package:dude/pages/sign_in_up/login_page_ui.dart';
import 'package:dude/util/constants/app_constants.dart';
import 'package:dude/util/ui/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResisterUi extends StatefulWidget {
  const ResisterUi({Key? key}) : super(key: key);

  @override
  _ResisterUiState createState() => _ResisterUiState();
}

class _ResisterUiState extends State<ResisterUi> {
  Size size = Size.zero;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisable = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
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
                        child: SingleChildScrollView(
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
                                lableText: "User Name",
                                hintText: "Enter User Name",
                                keyboardType: TextInputType.name,
                                textFieldColor: Colors.transparent.withOpacity(0.1),
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
                                controller: emailController,
                                borderColor: myColor,
                                lableText: "Email",
                                hintText: "Enter Email",
                                keyboardType: TextInputType.emailAddress,
                                textFieldColor: Colors.transparent.withOpacity(0.1),
                                style: GoogleFonts.prata(color: myColor, fontWeight: FontWeight.bold, letterSpacing: 1),
                                fieldtextStyle: GoogleFonts.prata(color: myColor, fontWeight: FontWeight.bold, letterSpacing: 3),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: myColor,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                              padding: EdgeInsets.only(bottom: (MediaQuery.of(context).viewInsets.bottom / 2)),
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
                          ]),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Hero(
                                  tag: "SIGNIN",
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginUi()), (route) => false);
                                    },
                                    child: MyText(
                                      "Already a user? SignIn",
                                      style: GoogleFonts.vollkorn(
                                        fontSize: 16,
                                        color: myColor,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                              color: myColor,
                            ),
                            type: "Google",
                            bgColor: Colors.blue,
                            onTap: () {},
                          ),
                          signWithCard(
                            icon: Icon(
                              Icons.phone,
                              size: 30,
                              color: myColor,
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
                      top: (size.height * 0.69) - 25,
                      left: (size.width * 0.73) - 50,
                      child: SizedBox(
                          width: 130,
                          height: 50,
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  MyText(
                                    "SignUp",
                                    style: GoogleFonts.oleoScript(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: myColor,
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
                "Sign up with $type",
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

class LoginPagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.teal.shade300;

    Path path = Path();
    // Paint paint = Paint();

    path.lineTo(0, size.height * 0.74);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.68, size.width * 0.45, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.82, size.width, size.height * 0.75);
    path.quadraticBezierTo(size.width, size.height * 0, size.width, 0);
    path.close();

    paint.color = Colors.cyan.shade100;
    canvas.drawPath(path, paint);
    Path path1 = Path();
    path1.lineTo(0, size.height * 0.74);
    path1.quadraticBezierTo(size.width * 0.2, size.height * 0.7, size.width * 0.45, size.height * 0.75);
    path1.quadraticBezierTo(size.width * 0.75, size.height * 0.68, size.width, size.height * 0.75);
    path1.quadraticBezierTo(size.width, size.height * 0, size.width, 0);
    path1.close();

    paint.color = Colors.white;
    canvas.drawPath(path1, paint);

    Path path2 = Path();
    path2.lineTo(0, size.width * 0.28);
    path2.quadraticBezierTo(size.width * 0.3, size.width * 0.3, size.width * 0.3, size.width * 0.1);
    path2.quadraticBezierTo(size.width * 0.3, size.width * 0, size.width * 0.28, 0);
    path2.close();
    paint.color = Colors.cyan.shade100;
    canvas.drawPath(path2, paint);

    canvas.drawCircle(Offset(size.width * 0.95, size.height * 0.3), 80, paint);
  }

  @override
  bool shouldRepaint(LoginPagePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(LoginPagePainter oldDelegate) => false;
}

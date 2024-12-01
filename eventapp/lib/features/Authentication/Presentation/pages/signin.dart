import 'package:eventapp/features/Authentication/Presentation/widgets/InputFormField.dart';
import 'package:eventapp/features/Authentication/Presentation/widgets/backgroundpaiter.dart';
import 'package:eventapp/features/Authentication/Presentation/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _Emailadresscontroler = TextEditingController();
  final _paswordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            size: Size(double.infinity, double.infinity),
            painter: BackgroundPainter(),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 40, right: 40),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.lexend(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: Color(0xFFFFFFAB)),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xFF6B59FF), width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 18),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            InputFormField(
                              label: "Email",
                              inputType: TextInputType.emailAddress,
                              controller: _Emailadresscontroler,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your email";
                                } else if (!RegExp(
                                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                    .hasMatch(value)) {
                                  return "Please enter a valid email address";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            InputFormField(
                              label: "Password",
                              inputType: TextInputType.text,
                              controller: _paswordcontroller,
                              hideText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your password";
                                } else if (value.length < 6) {
                                  return "Password length must be greater than 6";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Column(
                    children: [
                      Buttonone(
                        label: "LOGIN",
                        onPressed: () {},
                      ),
                      SizedBox(height: 33),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        text: "Forgotten your password? ",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Color(0xFFFFF9F9),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Reset password ",
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Color(0xFF22B2FF)),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {},
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                  color: Color(0xFFFFFFFF),
                                  thickness: 1,
                                )),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    "Or Login With",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xFFFFFFFF)),
                                  ),
                                ),
                                Expanded(
                                    child: Divider(
                                  color: Color(0xFFFFFFFF),
                                  thickness: 1,
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  "asset/logo/googlelogo.png",
                                  width: 24,
                                  height: 24,
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Already have an account ? ",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(0xFFFFF9F9),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Sign  up ",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Color(0xFF22B2FF)),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

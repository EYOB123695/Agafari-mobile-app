import 'package:eventapp/features/Authentication/Presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({
    super.key,
  });

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _Fullnamecontroller = TextEditingController();
  final _Emailadresscontroler = TextEditingController();
  final _paswordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "SIGN UP" text with its own padding
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 40, right: 40),
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40), // Add spacing below the text

            // Form with its own padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    InputFormField(
                      label: "Fullname",
                      inputType: TextInputType.text,
                      controller: _Fullnamecontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                    ),
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
          ],
        ),
      ),
    );
  }
}

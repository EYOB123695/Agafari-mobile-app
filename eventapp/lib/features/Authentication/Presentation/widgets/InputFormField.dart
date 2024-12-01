import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFormField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool hideText;

  const InputFormField({
    Key? key,
    required this.label,
    required this.inputType,
    required this.controller,
    required this.validator,
    this.hideText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              label,
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF32ADE6)),
            ),
          ),
          SizedBox(height: 3),
          TextFormField(
            controller: controller,
            keyboardType: inputType,
            obscureText: hideText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}

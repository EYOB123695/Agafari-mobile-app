import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonone extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const Buttonone({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.lalezar(
          textStyle: const TextStyle(
            fontSize: 18,
            color: Color(0xFFD7F0FF),
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff000000),
        foregroundColor: Color(0xFFD7F0FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(41)),
      ),
    );
  }
}

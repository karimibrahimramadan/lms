import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customHeaderText(String text, Color? textColor) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      color: textColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customAppBarText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  );
}

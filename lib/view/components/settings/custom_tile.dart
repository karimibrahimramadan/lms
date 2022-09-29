import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTile(String text) {
  return ListTile(
    title: Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 16,
      ),
    ),
    trailing: const Icon(
      Icons.arrow_forward_ios,
    ),
  );
}

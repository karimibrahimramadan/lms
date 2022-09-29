import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customCard(String assetPath, String text) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 8,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          child: SvgPicture.asset(
            assetPath,
            height: 45,
            color: Colors.deepOrange,
          ),
          radius: 40,
          backgroundColor: Colors.grey[500]!.withOpacity(0.2),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.deepOrange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

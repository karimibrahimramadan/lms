import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? primaryColor;
  final Color? textColor;
  final VoidCallback onPressed;
  const CustomButton({
    required this.text,
    required this.onPressed,
    this.primaryColor,
    this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          // color: borderColor,
        ),
        color: primaryColor,
      ),
      child: MaterialButton(
        // shape: ,
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

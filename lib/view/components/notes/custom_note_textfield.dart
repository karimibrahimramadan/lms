import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNoteTextField extends StatelessWidget {
  final int? maxLines;
  final String? labelText;
  final String? hintText;
  const CustomNoteTextField({
    Key? key,
    this.maxLines,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(color: Colors.black),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: Colors.black),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomRight: Radius.circular((24)),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomRight: Radius.circular((24)),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportTextformField extends StatelessWidget {
  final IconData? iconData;
  final int? maxLines;
  final String? hintText;
  const SupportTextformField({
    Key? key,
    this.iconData,
    this.hintText,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(),
          prefixIcon: Icon(
            iconData,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.deepOrange,
            ),
          ),
        ),
        maxLines: maxLines,
      ),
    );
  }
}

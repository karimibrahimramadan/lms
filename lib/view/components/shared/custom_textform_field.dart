import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final IconData? iconData;
  final Color? color;
  final VoidCallback? onPressed;
  final bool isSecure;
  final TextInputType? textInputType;
  final TextEditingController controller;

  CustomTextField({
    Key? key,
    required this.isSecure,
    required this.controller,
    this.labelText,
    this.onPressed,
    this.color,
    this.iconData,
    this.textInputType,
  }) : super(key: key);

  final FocusNode myFoucsedNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: myFoucsedNode,
      cursorColor: Colors.deepOrange,
      obscureText: isSecure,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          // color: myFoucsedNode.hasFocus ? Colors.black : Colors.deepOrange,
          color: Colors.black.withOpacity(0.5),
        ),
        // hintText: text,
        focusColor: Colors.deepOrange,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.deepOrange),
          borderRadius: BorderRadius.circular(14),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconData,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}

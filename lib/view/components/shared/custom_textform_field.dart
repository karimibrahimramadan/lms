import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final IconData? iconData;
  final Color? color;
  final VoidCallback? onPressed;
  final bool isSecure;

  const CustomTextField({
    Key? key,
    required this.text,
    required this.isSecure,
    this.onPressed,
    this.color,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(iconData),
        ),
      ),
    );
  }
}

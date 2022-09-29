import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Support"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 6,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SupportTextformField(
              iconData: Icons.person,
            ),
            const SupportTextformField(iconData: Icons.email),
            const SupportTextformField(
              maxLines: 8,
            ),
            Container(
              height: 45,
              margin: const EdgeInsets.symmetric(vertical: 32),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(8)),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(iconData),
            border: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(32),
                ),
            enabledBorder: OutlineInputBorder()),
        maxLines: maxLines,
      ),
    );
  }
}

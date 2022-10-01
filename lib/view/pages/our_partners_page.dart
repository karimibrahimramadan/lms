import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';

class OurPartnersPage extends StatelessWidget {
  const OurPartnersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Our Partners"),
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
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 32),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.grey,
                Colors.white,
                Colors.grey,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ],
            color: Colors.grey[400],
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/logo.png",
              ),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ODCs",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

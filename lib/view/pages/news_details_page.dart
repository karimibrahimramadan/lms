import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      color: Colors.deepOrange,
                    ),
                  )),
              Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "ODCs",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "2022-07-06",
                style: GoogleFonts.poppins(
                  color: Colors.deepOrange,
                  fontSize: 12,
                  // fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ODC Supports All Universities",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

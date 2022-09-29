import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'News',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 32),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: Colors.grey[400],
              image: const DecorationImage(
                image: AssetImage("assets/images/logo.png"),
              ),
              borderRadius: BorderRadius.circular(16)),
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
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 40,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/share.svg",
                              color: Colors.white,
                            ),
                            const VerticalDivider(color: Colors.white),
                            SvgPicture.asset(
                              "assets/icons/copy.svg",
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "ODC Supports All Universities",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
      // backgroundColor: Colors.white,
    );
  }
}

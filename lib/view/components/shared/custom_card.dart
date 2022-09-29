import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customContentCard() {
  return Card(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Flutter",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Expanded(child: Container()),
            Row(
              children: [
                const Icon(Icons.timer, size: 16),
                Text("2hrs", style: GoogleFonts.poppins(fontSize: 12)),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Lecture Day",
                    style: GoogleFonts.poppins(
                        fontSize: 10, color: Colors.grey[700])),
                Text("Start Time",
                    style: GoogleFonts.poppins(
                        fontSize: 10, color: Colors.grey[700])),
                Text("End Time",
                    style: GoogleFonts.poppins(
                        fontSize: 10, color: Colors.grey[700])),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [Icon(Icons.timer, size: 16), Text("Wednesday")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/time.svg",
                      width: 20,
                      color: Colors.greenAccent[700],
                    ),
                    Text(
                      "12:00pm",
                      style: GoogleFonts.poppins(),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/time.svg",
                      color: Colors.red[400],
                    ),
                    Text(
                      "2:00pm",
                      style: GoogleFonts.poppins(),
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

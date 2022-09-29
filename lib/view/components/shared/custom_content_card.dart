import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContentCard extends StatelessWidget {
  final String text;
  final String startTime;
  final String endTime;
  const CustomContentCard({
    Key? key,
    required this.text,
    required this.startTime,
    required this.endTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        size: 20,
                      ),
                      Text(
                        "2hrs",
                        style: GoogleFonts.poppins(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Lecture Day"),
                  Text("Start Time"),
                  Text("End Time"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.ac_unit),
                      Text(
                        "Wednesday",
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/time.svg",
                        color: Colors.greenAccent[700],
                      ),
                      Text(
                        startTime,
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/time.svg",
                        color: Colors.red,
                      ),
                      Text(
                        endTime,
                        style: GoogleFonts.poppins(),
                      )
                    ],
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


// lectureCubit.lectureData!.data![index].lectureSubject
                        // .toString()
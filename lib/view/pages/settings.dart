import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/settings/custom_tile.dart';
import 'package:lms/view/pages/faq_page.dart';
import 'package:lms/view/pages/login_page.dart';
import 'package:lms/view/pages/our_partners_page.dart';
import 'package:lms/view/pages/support_page.dart';
import 'package:lms/view/pages/terms&conditions_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              child: customTile("FAQ"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const FAQPage()));
              },
            ),
            Divider(color: Colors.grey[700]),
            InkWell(
              child: customTile("Terms & Conditions"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const TermsAndConditions()));
              },
            ),
            Divider(color: Colors.grey[700]),
            InkWell(
              child: customTile("Our Partners"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const OurPartnersPage()));
              },
            ),
            Divider(color: Colors.grey[700]),
            InkWell(
              child: customTile("Support"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SupportPage()));
              },
            ),
            Divider(color: Colors.grey[700]),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      var size = MediaQuery.of(context).size;
                      return AlertDialog(
                        title: Text(
                          "Logout",
                          style: GoogleFonts.poppins(),
                        ),
                        content: Text(
                          "Are you sure?",
                          style: GoogleFonts.poppins(),
                        ),
                        actionsPadding: const EdgeInsets.all(8.0),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: size.width / 3.5,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.deepOrange,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.poppins(
                                        color: Colors.deepOrange,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width / 3.5,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    border: Border.all(
                                      color: Colors.deepOrange,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (_) => const Login(),
                                        ),
                                        (route) => false,
                                      );
                                    },
                                    child: Text(
                                      "Sure",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    });
              },
              child: customTile("Log out"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

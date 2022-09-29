import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/settings/custom_tile.dart';
import 'package:lms/view/pages/faq_page.dart';
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
            customTile("Log out"),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

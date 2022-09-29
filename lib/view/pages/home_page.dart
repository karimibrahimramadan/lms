import 'package:flutter/material.dart';
import 'package:lms/view/components/home/custom_card.dart';
import 'package:lms/view/components/shared/custom_header_text.dart';
import 'package:lms/view/pages/events_page.dart';
import 'package:lms/view/pages/finals_page.dart';
import 'package:lms/view/pages/lectures_page.dart';
import 'package:lms/view/pages/midterms_page.dart';
import 'package:lms/view/pages/notes_page.dart';
import 'package:lms/view/pages/sections_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customHeaderText("Orange ", Colors.deepOrange),
                  customHeaderText("Digital Center", Colors.black),
                ],
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 16,
                mainAxisSpacing: 8,
                children: [
                  InkWell(
                    child: customCard(
                      "assets/icons/lecture.svg",
                      "Lectures",
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LecturesPage()),
                      );
                    },
                  ),
                  InkWell(
                    child: customCard("assets/icons/sections.svg", "Sections"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SectionsPage()),
                      );
                    },
                  ),
                  InkWell(
                    child: customCard("assets/icons/midterm.svg", "Midterms"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const MidtermsPage(),
                        ),
                      );
                    },
                  ),
                  InkWell(
                    child: customCard("assets/icons/final.svg", "Finals"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const FinalsPage()),
                      );
                    },
                  ),
                  InkWell(
                    child: customCard("assets/icons/event.svg", "Events"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const EventsPage()),
                      );
                    },
                  ),
                  InkWell(
                    child: customCard("assets/icons/notes.svg", "Notes"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const NotesPage()),
                      );
                    },
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

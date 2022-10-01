import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/pages/add_note_page.dart';
import '../components/shared/custom_appbar_text.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Notes"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Text(
          "There's No Data To Show",
          style: GoogleFonts.poppins(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const AddNotePage(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.blueGrey[300],
      ),
    );
  }
}

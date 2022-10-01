import 'package:flutter/material.dart';
import 'package:lms/view/components/notes/custom_note_textfield.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Add Note"),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CustomNoteTextField(
                hintText: "Enter Title",
                labelText: "Title",
              ),
              const CustomNoteTextField(
                hintText: "2022-09-22",
                labelText: "Date",
              ),
              const CustomNoteTextField(
                hintText: "Enter Note",
                labelText: "Note",
                maxLines: 8,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[200],
                  fixedSize: const Size(90, 35),
                ),
                onPressed: () {},
                child: const Text(
                  "+ Add",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

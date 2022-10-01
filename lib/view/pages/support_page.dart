import 'package:flutter/material.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';
import 'package:lms/view/components/shared/custom_button.dart';
import 'package:lms/view/components/support/support_textformfield.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Support"),
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
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SupportTextformField(
                iconData: Icons.person,
                hintText: "Name",
              ),
              const SupportTextformField(
                iconData: Icons.email,
                hintText: "E-Mail",
              ),
              const SupportTextformField(
                hintText: "What's making you unhappy?",
                maxLines: 8,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: CustomButton(
                  text: "Submit",
                  onPressed: () {},
                  primaryColor: Colors.deepOrange,
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

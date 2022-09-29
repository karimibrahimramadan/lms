import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/pages/login_page.dart';
import '../components/shared/custom_button.dart';
import '../components/shared/custom_textform_field.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final List<String> genders = ["Male", "Female"];
  final List<String> universities = ["AUC", "ASU"];
  final List<String> grades = ["Grade 1", "Grade 2", "Grade 3", "Grade 4"];

  final String gender = "";

  final bool isVisible = true;
  final bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Orange ",
                      style: GoogleFonts.poppins(
                          color: Colors.orange[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Text(
                      "Digital Center",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                ),
                const SizedBox(height: 72),
                Text(
                  "Sign Up",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  text: "Name",
                  isSecure: false,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  text: "E-Mail",
                  isSecure: false,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  text: "Password",
                  iconData: isVisible ? Icons.visibility : Icons.visibility_off,
                  isSecure: isVisible,
                  onPressed: () {},
                  color: Colors.orange[800],
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  text: "Password",
                  iconData: isSecure ? Icons.visibility : Icons.visibility_off,
                  isSecure: isSecure,
                  onPressed: () {},
                  color: Colors.orange[800],
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  text: "Phone Number",
                  isSecure: false,
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Gender",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "University",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownButton<String>(
                        items: genders
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        value: gender,
                        onChanged: (String? val) {}),
                    DropdownButton<String>(
                        items: universities
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        value: universities[0],
                        onChanged: (String? val) {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Grade",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                        items: grades
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        value: grades[0],
                        onChanged: (String? val) {}),
                  ],
                ),
                const SizedBox(height: 32),
                CustomButton(
                  onPressed: () {},
                  text: "Sign Up",
                  textColor: Colors.white,
                  primaryColor: Colors.orange[800],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "OR",
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Login()));
                  },
                  text: "Login",
                  textColor: Colors.orange[800],
                  primaryColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

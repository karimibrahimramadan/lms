import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/pages/login_page.dart';
import 'package:lms/viewmodel/signup/cubit/signup_cubit.dart';
import '../components/shared/custom_button.dart';
import '../components/shared/custom_textform_field.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final List<String> genders = ["Male", "Female"];
  final List<String> universities = [
    "AUC",
    "Cairo",
    "ELU",
    "GUC",
    "Helwan",
    "HTI"
  ];
  final List<String> grades = [
    "Grade 1",
    "Grade 2",
    "Grade 3",
    "Grade 4",
    "Grade 5"
  ];

  final String gender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: BlocBuilder<SignupCubit, SignupState>(
              bloc: BlocProvider.of<SignupCubit>(context),
              builder: (context, state) {
                SignupCubit signupCubit = SignupCubit.get(context);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Orange ",
                          style: GoogleFonts.poppins(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          "Digital Center",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
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
                    CustomTextField(
                      controller: signupCubit.nameController,
                      labelText: "Name",
                      isSecure: false,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      textInputType: TextInputType.emailAddress,
                      controller: signupCubit.emailController,
                      labelText: "E-Mail",
                      isSecure: false,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: signupCubit.passwordController,
                      labelText: "Password",
                      iconData: signupCubit.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      isSecure: signupCubit.isVisible,
                      onPressed: () {
                        signupCubit.changeIsVisibilty();
                      },
                      color: Colors.deepOrange,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: signupCubit.confirmPasswordController,
                      labelText: "Password",
                      iconData: signupCubit.visible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      isSecure: signupCubit.visible,
                      onPressed: () {
                        signupCubit.changeVisibilty();
                      },
                      color: Colors.deepOrange,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: signupCubit.phoneController,
                      textInputType: TextInputType.phone,
                      labelText: "Phone Number",
                      isSecure: false,
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Gender",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "University",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(16),
                              items: genders.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              value: signupCubit.gender,
                              onChanged: (String? val) {
                                signupCubit.setGender(val!);
                              },
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(16),
                              items: universities.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              value: signupCubit.university,
                              onChanged: (String? val) {
                                signupCubit.setUniversity(val!);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Grade",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(16),
                              items: grades.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              value: signupCubit.grade,
                              onChanged: (String? val) {
                                signupCubit.setGrade(val!);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    CustomButton(
                      onPressed: () {
                        signupCubit.signup(context);
                      },
                      text: "Sign Up",
                      textColor: Colors.white,
                      primaryColor: Colors.deepOrange,
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
                          MaterialPageRoute(
                            builder: (_) => const Login(),
                          ),
                        );
                      },
                      text: "Login",
                      textColor: Colors.deepOrange,
                      primaryColor: Colors.white,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

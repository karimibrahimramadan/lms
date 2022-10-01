import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/pages/signup_page.dart';
import 'package:lms/viewmodel/login/cubit/login_cubit.dart';
import '../components/shared/custom_button.dart';
import '../components/shared/custom_textform_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      bloc: BlocProvider.of<LoginCubit>(context),
      builder: (context, state) {
        LoginCubit loginCubit = LoginCubit.get(context);
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: Column(
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
                            fontSize: 24,
                          ),
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
                    const SizedBox(height: 96), ////
                    Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: loginCubit.emailController,
                      labelText: "E-Mail",
                      textInputType: TextInputType.emailAddress,
                      isSecure: false,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: loginCubit.passwordController,
                      labelText: "Password",
                      iconData: loginCubit.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.deepOrange,
                      isSecure: loginCubit.isVisible,
                      onPressed: () {
                        loginCubit.changeVisibilty();
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepOrange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 80),
                    CustomButton(
                      onPressed: () {
                        loginCubit.login(context);
                      },
                      text: "Login",
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
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                            builder: (_) => SignUp(),
                          ),
                        );
                      },
                      text: "Sign Up",
                      textColor: Colors.deepOrange,
                      primaryColor: Colors.white,
                    ),
                    const SizedBox(height: 72),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

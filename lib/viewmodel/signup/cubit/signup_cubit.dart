import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/pages/login_page.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  static SignupCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String gender = "Male";
  String? grade = "Grade 1";
  String? university = "AUC";
  bool isVisible = true;
  bool visible = true;

  void changeIsVisibilty() {
    isVisible = !isVisible;
    emit(SignupLoaded());
  }

  void changeVisibilty() {
    visible = !visible;
    emit(SignupLoaded());
  }

  void setGender(String value) {
    gender = value;
    emit(SignupLoaded());
  }

  void setGrade(String value) {
    grade = value;
    emit(SignupLoaded());
  }

  void setUniversity(String value) {
    university = value;
    emit(SignupLoaded());
  }

  void signup(BuildContext context) {
    var data = {
      "email": emailController.text,
      "name": nameController.text,
      "password": passwordController.text,
      "phoneNumber": phoneController.text,
      "gender": "m",
      "gradeId": "4",
      "universityId": "1",
    };
    DioHelper.postData(url: registerEndPoint, data: data).then((value) {
      if (value.statusCode == 200) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Login()),
        );
        emit(SignupLoaded());
        showTopSnackBar(
          context,
          const CustomSnackBar.success(
            message: "Successfully signed up",
          ),
        );
        nameController.text = '';
        emailController.text = "";
        passwordController.text = "";
        confirmPasswordController.text = "";
        phoneController.text = "";
      }
    }).catchError((onError) {
      print(onError.toString());
    });
  }
}

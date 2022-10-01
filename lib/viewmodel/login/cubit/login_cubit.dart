import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/pages/home.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisible = true;

  void changeVisibilty() {
    isVisible = !isVisible;
    emit(LoginLoaded());
  }

  void login(BuildContext context) {
    var data = {
      "email": emailController.text,
      "password": passwordController.text
    };

    DioHelper.postData(url: loginEndPoint, data: data).then((value) {
      print(value.data);
      print(value.statusCode);
      if (value.statusCode == 200) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()),
        );
        emit(LoginLoaded());
        showTopSnackBar(
          context,
          const CustomSnackBar.success(
            message: "Successfully Login!",
          ),
        );
        emailController.text = "";
        passwordController.text = "";
      }
    }).catchError((onError) {
      print(onError);
    });
  }
}

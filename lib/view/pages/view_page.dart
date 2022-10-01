import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/pages/login_page.dart';
import 'package:lms/viewmodel/exam/cubit/exam_cubit.dart';
import 'package:lms/viewmodel/faq/cubit/faq_cubit.dart';
import 'package:lms/viewmodel/home/cubit/home_cubit.dart';
import 'package:lms/viewmodel/lectures/cubit/lecture_cubit.dart';
import 'package:lms/viewmodel/login/cubit/login_cubit.dart';
import 'package:lms/viewmodel/sections/cubit/sections_cubit.dart';
import 'package:lms/viewmodel/signup/cubit/signup_cubit.dart';
import 'package:lms/viewmodel/terms/cubit/terms_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => LectureCubit()),
        BlocProvider(create: (context) => FaqCubit()),
        BlocProvider(create: (context) => SectionsCubit()),
        BlocProvider(create: (context) => ExamCubit()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => TermsCubit()),
        BlocProvider(create: (context) => SignupCubit()),
      ],
      child: const MaterialApp(
        home: Login(),
      ),
    );
  }
}

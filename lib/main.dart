import 'package:flutter/material.dart';
import 'package:lms/view/pages/view_page.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';

void main() async {
  await DioHelper.init();
  runApp(const MyApp());
}

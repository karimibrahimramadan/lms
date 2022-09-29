import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/constants.dart';
import 'package:lms/model/exam_model.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:meta/meta.dart';

part 'exam_state.dart';

class ExamCubit extends Cubit<ExamState> {
  ExamCubit() : super(ExamInitial());

  static ExamCubit get(context) => BlocProvider.of(context);
  ExamModel? examData;

  void getData() {
    DioHelper.getData(url: examsEndPoint, token: token).then((value) {
      examData = ExamModel.fromJson(value.data);
      emit(ExamLoaded());
    });
  }
}

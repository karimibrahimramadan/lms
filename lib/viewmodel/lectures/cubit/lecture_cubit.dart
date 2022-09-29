import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/constants.dart';
import 'package:lms/model/lecture_model.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:meta/meta.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());

  static LectureCubit get(context) => BlocProvider.of(context);
  LectureModel? lectureData;

  void getData() {
    DioHelper.getData(url: lectureEndPoint, token: token).then((value) {
      print(value.statusCode);
      lectureData = LectureModel.fromJson(value.data);
      emit(LectureDataLoaded());
    });
  }
}

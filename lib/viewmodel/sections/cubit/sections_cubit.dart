import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/constants.dart';
import 'package:lms/model/section_model.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:meta/meta.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(context) => BlocProvider.of(context);
  SectionModel? sectionData;

  void getData() {
    DioHelper.getData(url: sectionEndPoint, token: token).then((value) {
      // print(value.data);
      sectionData = SectionModel.fromJson(value.data);
      emit(SectionsLoaded());
    });
  }
}

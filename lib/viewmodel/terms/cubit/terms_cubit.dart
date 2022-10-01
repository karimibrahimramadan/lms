import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/model/terms_model.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:meta/meta.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());

  static TermsCubit get(context) => BlocProvider.of(context);
  TermsModel? termsData;

  void getData() {
    DioHelper.getData(url: termsEndPoint).then((value) {
      termsData = TermsModel.fromJson(value.data);
      emit(TermsLoaded());
    });
  }
}

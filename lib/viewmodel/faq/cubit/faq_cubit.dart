import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/viewmodel/database/network/dio_helper.dart';
import 'package:lms/viewmodel/database/network/end_points.dart';
import 'package:meta/meta.dart';

import '../../../model/faq_model.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());

  static FaqCubit get(context) => BlocProvider.of(context);
  FaqModel? faqData;

  void getFaq() {
    DioHelper.getData(url: faqEndPoint).then((value) {
      faqData = FaqModel.fromJson(value.data);
      print(faqData);
      emit(FaqLoaded());
    });
  }
}

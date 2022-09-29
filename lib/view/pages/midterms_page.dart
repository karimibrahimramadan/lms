import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/components/shared/custom_content_card.dart';
import 'package:lms/viewmodel/exam/cubit/exam_cubit.dart';
import '../components/shared/custom_appbar_text.dart';
import '../components/shared/custom_filter_button.dart';

class MidtermsPage extends StatelessWidget {
  const MidtermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Midterms"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [customFilter()],
      ),
      body: BlocBuilder<ExamCubit, ExamState>(
        bloc: BlocProvider.of<ExamCubit>(context)..getData(),
        builder: (context, state) {
          ExamCubit examCubit = ExamCubit.get(context);
          return examCubit.examData == null
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return CustomContentCard(
                      text: examCubit.examData!.data![index].examSubject
                          .toString(),
                      startTime: examCubit.examData!.data![index].examStartTime
                          .toString(),
                      endTime: examCubit.examData!.data![index].examEndTime
                          .toString(),
                    );
                  },
                  itemCount: examCubit.examData!.data!.length);
        },
      ),
    );
  }
}

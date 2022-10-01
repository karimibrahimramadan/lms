import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/components/shared/custom_content_card.dart';
import 'package:lms/viewmodel/exam/cubit/exam_cubit.dart';
import '../components/shared/custom_appbar_text.dart';
import '../components/shared/custom_filter_button.dart';

class FinalsPage extends StatelessWidget {
  const FinalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Finals"),
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
        actions: const [
          CustomFilterButton(
            popupMenuItems: [
              PopupMenuItem(child: Text("All Finals")),
              PopupMenuItem(child: Text("Finished Finals")),
              PopupMenuItem(child: Text("Remaining Finals")),
            ],
          ),
        ],
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
                    return examCubit.examData!.data![index].isFinal == true
                        ? CustomContentCard(
                            text: examCubit.examData!.data![index].examSubject
                                .toString(),
                            startTime: examCubit
                                .examData!.data![index].examStartTime
                                .toString(),
                            endTime: examCubit
                                .examData!.data![index].examEndTime
                                .toString())
                        : const SizedBox();
                  },
                  itemCount: examCubit.examData!.data!.length,
                );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';
import 'package:lms/view/components/shared/custom_content_card.dart';
import 'package:lms/view/components/shared/custom_filter_button.dart';
import 'package:lms/viewmodel/lectures/cubit/lecture_cubit.dart';

class LecturesPage extends StatelessWidget {
  const LecturesPage({Key? key}) : super(key: key);

  final List<PopupMenuItem> popupMenuButtons = const [
    PopupMenuItem(
      child: Text(
        "All Finals",
      ),
    ),
    PopupMenuItem(
      child: Text(
        "Finished Finals",
      ),
    ),
    PopupMenuItem(
      child: Text(
        "Remaining Finals",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Lectures"),
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
        actions: const [
          CustomFilterButton(
            popupMenuItems: [
              PopupMenuItem(child: Text("All Lectures")),
              PopupMenuItem(child: Text("Finished Lectures")),
              PopupMenuItem(child: Text("Remaining Lectures")),
            ],
          ),
        ],
      ),
      body: BlocBuilder(
        bloc: BlocProvider.of<LectureCubit>(context)..getData(),
        builder: (BuildContext context, state) {
          LectureCubit lectureCubit = LectureCubit.get(context);
          return lectureCubit.lectureData == null
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: lectureCubit.lectureData!.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return lectureCubit.lectureData == null
                        ? const Center(
                            child: CircularProgressIndicator(
                                color: Colors.deepOrangeAccent),
                          )
                        : CustomContentCard(
                            text: lectureCubit
                                .lectureData!.data![index].lectureSubject
                                .toString(),
                            startTime: lectureCubit
                                .lectureData!.data![index].lectureStartTime
                                .toString(),
                            endTime: lectureCubit
                                .lectureData!.data![index].lectureEndTime
                                .toString(),
                          );
                  },
                );
        },
      ),
    );
  }
}

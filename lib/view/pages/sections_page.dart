import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/view/components/shared/custom_content_card.dart';
import 'package:lms/viewmodel/sections/cubit/sections_cubit.dart';
import '../components/shared/custom_appbar_text.dart';
import '../components/shared/custom_filter_button.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Sections"),
        backgroundColor: Colors.white,
        centerTitle: true,
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
              PopupMenuItem(child: Text("All Sections")),
              PopupMenuItem(child: Text("Finished Sections")),
              PopupMenuItem(child: Text("Remaining Sections")),
            ],
          ),
        ],
      ),
      body: BlocBuilder<SectionsCubit, SectionsState>(
        bloc: BlocProvider.of<SectionsCubit>(context)..getData(),
        builder: (context, state) {
          SectionsCubit sectionsCubit = BlocProvider.of(context);
          return sectionsCubit.sectionData == null
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: sectionsCubit.sectionData!.data!.length,
                  itemBuilder: (context, index) {
                    return CustomContentCard(
                      text: sectionsCubit
                          .sectionData!.data![index].sectionSubject
                          .toString(),
                      startTime: sectionsCubit
                          .sectionData!.data![index].sectionStartTime
                          .toString(),
                      endTime: sectionsCubit
                          .sectionData!.data![index].sectionEndTime
                          .toString(),
                    );
                  },
                );
        },
      ),
    );
  }
}

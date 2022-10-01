import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';
import 'package:lms/viewmodel/faq/cubit/faq_cubit.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'package:toggle_list/toggle_list.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("FAQ"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: BlocBuilder(
        bloc: BlocProvider.of<FaqCubit>(context)..getFaq(),
        builder: (context, state) {
          FaqCubit faqCubit = FaqCubit.get(context);
          return faqCubit.faqData == null
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ),
                )
              : ToggleList(
                  children: [
                    ToggleListItem(
                      headerDecoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      itemDecoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      content: Container(
                        child: Center(
                            child: RichText(
                                text: HTML.toTextSpan(
                                    context,
                                    faqCubit.faqData!.data![0].answer
                                        .toString(),
                                    defaultTextStyle: GoogleFonts.poppins(
                                        color: Colors.white)))),
                        padding: const EdgeInsets.all(24),
                      ),
                      title: Container(
                        child: RichText(
                            text: HTML.toTextSpan(context,
                                faqCubit.faqData!.data![0].question.toString(),
                                defaultTextStyle: GoogleFonts.poppins())),
                        padding: const EdgeInsets.all(16),
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';
import 'package:lms/viewmodel/faq/cubit/faq_cubit.dart';

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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Row(
                      children: [
                        Text(
                          faqCubit.faqData.toString(),
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_down_rounded))
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}

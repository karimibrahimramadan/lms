import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';
import 'package:lms/viewmodel/terms/cubit/terms_cubit.dart';
import 'package:simple_html_css/simple_html_css.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Terms & Conditions"),
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
      body: BlocBuilder<TermsCubit, TermsState>(
        builder: (context, state) {
          TermsCubit termsCubit = TermsCubit.get(context)..getData();
          return termsCubit.termsData == null
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RichText(
                      text: HTML.toTextSpan(
                        context,
                        termsCubit.termsData!.data!.terms.toString(),
                        defaultTextStyle: GoogleFonts.poppins(
                          color: Colors.grey.withOpacity(1),
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
        },
      ),
    );
  }
}

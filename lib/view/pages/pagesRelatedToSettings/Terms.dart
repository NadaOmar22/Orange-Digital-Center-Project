import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../viewmodel/filesRelatedToSettings/terms_cubit.dart';
import '../../components/core/AppBarOfPagesRelatedToSettings.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TermsCubit()..get_data(),
      child: BlocConsumer<TermsCubit, TermsState>(
        listener: (context, state) {},
        builder: (context, state) {
          TermsCubit myTerm = TermsCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                appBar: AppBarOfPageRelatedToSettings(
                    context, 'Terms & Conditions', Colors.black, Colors.black),
                body: myTerm.termsModel == null
                    ? Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Center(
                                child: Title(
                                  child: Html(
                                      data: myTerm.termsModel!.data!.terms
                                          .toString()),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
          );
        },
      ),
    );
  }
}

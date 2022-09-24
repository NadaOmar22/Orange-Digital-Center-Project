import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../viewmodel/filesRelatedToSettings/faq_cubit.dart';
import '../../components/faq/ExpansionTileComponent.dart';
import '../../components/core/AppBarOfPagesRelatedToSettings.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FaqCubit()..get_data(),
      lazy: true,
      child: BlocConsumer<FaqCubit, FaqState>(
          listener: (context, state) {},
          builder: (context, state) {
            FaqCubit myFAQ = FaqCubit.get(context);
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                  appBar: AppBarOfPageRelatedToSettings(
                      context, 'FAQ', Colors.black, Colors.black),
                  body: myFAQ.faqModel == null
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: myFAQ.faqModel!.data!.length,
                          itemBuilder: (context, index) {
                            return ExpansionTileComponent(
                                myFAQ.faqModel!.data![index].question
                                    .toString(),
                                myFAQ.faqModel!.data![index].answer.toString());
                          },
                        ),
                ));
          }),
    );
  }
}

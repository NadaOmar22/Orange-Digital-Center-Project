import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../viewmodel/filesRelatedToHome/midterms_cubit.dart';
import '../../components/core/UsableCard.dart';
import '../../components/core/AppBarOfPagesRelatedToHome.dart';

class Midterms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MidtermsCubit()..get_data(),
      lazy: true,
      child: BlocConsumer<MidtermsCubit, MidtermsState>(
        listener: (context, state) {},
        builder: (context, state) {
          MidtermsCubit myMidterms = MidtermsCubit.get(context);
          return Builder(builder: (context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBarOfPagesRelatedToHome(context, 'Midterms'),
                body: myMidterms.midtermsModel == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: myMidterms.midtermsModel!.data!.length,
                        itemBuilder: (context, index) {
                          return UsableCard(
                            myMidterms.midtermsModel!.data![index].examSubject
                                .toString(),
                            myMidterms.midtermsModel!.data![index].examDate
                                .toString(),
                            myMidterms.midtermsModel!.data![index].examStartTime
                                .toString(),
                            myMidterms.midtermsModel!.data![index].examEndTime
                                .toString(),
                          );
                        },
                      ),
              ),
            );
          });
        },
      ),
    );
  }
}

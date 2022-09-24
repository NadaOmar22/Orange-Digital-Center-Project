import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/viewmodel/filesRelatedToHome/finals_cubit.dart';

import '../../../viewmodel/filesRelatedToHome/finals_state.dart';
import '../../components/core/UsableCard.dart';
import '../../components/core/AppBarOfPagesRelatedToHome.dart';

class Finals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FinalsCubit()..get_data(),
      lazy: true,
      child: BlocConsumer<FinalsCubit, FinalsState>(
        listener: (context, state) {},
        builder: (context, state) {
          FinalsCubit myFinals = FinalsCubit.get(context);
          return Builder(builder: (context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBarOfPagesRelatedToHome(context, 'Finals'),
                body: myFinals.finalsModel == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: myFinals.finalsModel!.data!.length,
                        itemBuilder: (context, index) {
                          return UsableCard(
                            myFinals.finalsModel!.data![index].examSubject
                                .toString(),
                            myFinals.finalsModel!.data![index].examDate
                                .toString(),
                            myFinals.finalsModel!.data![index].examStartTime
                                .toString(),
                            myFinals.finalsModel!.data![index].examEndTime
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

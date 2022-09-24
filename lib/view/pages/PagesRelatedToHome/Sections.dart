import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../viewmodel/filesRelatedToHome/sections_cubit.dart';
import '../../components/core/UsableCard.dart';
import '../../components/core/AppBarOfPagesRelatedToHome.dart';

class Sections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SectionsCubit()..get_data(),
      lazy: true,
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {},
        builder: (context, state) {
          SectionsCubit mySections = SectionsCubit.get(context);
          return Builder(builder: (context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBarOfPagesRelatedToHome(context, 'Sections'),
                body: mySections.sectionsModel == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: mySections.sectionsModel!.data!.length,
                        itemBuilder: (context, index) {
                          return UsableCard(
                            mySections
                                .sectionsModel!.data![index].sectionSubject
                                .toString(),
                            mySections.sectionsModel!.data![index].sectionDate
                                .toString(),
                            mySections
                                .sectionsModel!.data![index].sectionStartTime
                                .toString(),
                            mySections
                                .sectionsModel!.data![index].sectionEndTime
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
